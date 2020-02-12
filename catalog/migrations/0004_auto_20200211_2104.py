# Generated by Django 2.2 on 2020-02-11 20:04

from django.db import migrations


def combine_names(apps, schema_editor):
    # We get the model from the versioned app registry;
    # if we directly import it, it'll be the wrong version
    Author = apps.get_model("catalog", "Author")
    for author in Author.objects.all():
        author.full_name = "%s %s" % (author.first_name, author.last_name)
        author.save()


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0003_author_full_name'),
    ]

    operations = [
        migrations.RunPython(combine_names),

    ]
