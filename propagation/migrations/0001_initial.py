# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'DNS'
        db.create_table(u'propagation_dns', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('ip', self.gf('django.db.models.fields.CharField')(max_length=15)),
            ('fqdn', self.gf('django.db.models.fields.CharField')(max_length=50)),
            ('org', self.gf('django.db.models.fields.CharField')(max_length=100)),
            ('country', self.gf('django.db.models.fields.related.ForeignKey')(to=orm['propagation.Countries'])),
            ('latitude', self.gf('django.db.models.fields.CharField')(max_length=25)),
            ('longitude', self.gf('django.db.models.fields.CharField')(max_length=25)),
            ('responsetime', self.gf('django.db.models.fields.DecimalField')(max_digits=15, decimal_places=10)),
            ('available', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('malicious', self.gf('django.db.models.fields.BooleanField')(default=False)),
            ('reason', self.gf('django.db.models.fields.CharField')(max_length=35)),
            ('unavailable_count', self.gf('django.db.models.fields.IntegerField')()),
        ))
        db.send_create_signal(u'propagation', ['DNS'])

        # Adding model 'Countries'
        db.create_table(u'propagation_countries', (
            (u'id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('country', self.gf('django.db.models.fields.CharField')(max_length=3)),
            ('country_name', self.gf('django.db.models.fields.CharField')(max_length=30)),
        ))
        db.send_create_signal(u'propagation', ['Countries'])


    def backwards(self, orm):
        # Deleting model 'DNS'
        db.delete_table(u'propagation_dns')

        # Deleting model 'Countries'
        db.delete_table(u'propagation_countries')


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