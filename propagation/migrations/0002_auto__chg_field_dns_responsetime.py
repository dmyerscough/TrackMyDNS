# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):

        # Changing field 'DNS.responsetime'
        db.alter_column(u'propagation_dns', 'responsetime', self.gf('django.db.models.fields.DecimalField')(max_digits=15, decimal_places=10))

    def backwards(self, orm):

        # Changing field 'DNS.responsetime'
        db.alter_column(u'propagation_dns', 'responsetime', self.gf('django.db.models.fields.DecimalField')(max_digits=10, decimal_places=2))

    models = {
        u'propagation.countries': {
            'Meta': {'object_name': 'Countries'},
            'country': ('django.db.models.fields.CharField', [], {'max_length': '3'}),
            'country_name': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'})
        },
        u'propagation.dns': {
            'Meta': {'object_name': 'DNS'},
            'available': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'country': ('django.db.models.fields.related.ForeignKey', [], {'to': u"orm['propagation.Countries']"}),
            'fqdn': ('django.db.models.fields.CharField', [], {'max_length': '50'}),
            u'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'ip': ('django.db.models.fields.CharField', [], {'max_length': '15'}),
            'latitude': ('django.db.models.fields.CharField', [], {'max_length': '25'}),
            'longitude': ('django.db.models.fields.CharField', [], {'max_length': '25'}),
            'malicious': ('django.db.models.fields.BooleanField', [], {'default': 'False'}),
            'org': ('django.db.models.fields.CharField', [], {'max_length': '100'}),
            'reason': ('django.db.models.fields.CharField', [], {'max_length': '35'}),
            'responsetime': ('django.db.models.fields.DecimalField', [], {'max_digits': '15', 'decimal_places': '10'}),
            'unavailable_count': ('django.db.models.fields.IntegerField', [], {})
        }
    }

    complete_apps = ['propagation']