# Generated by Django 2.2 on 2020-02-09 13:16

from django.db import migrations

def comnine_names(apps, schema_editor):
    # We get the model from the versioned app registry;
    # if we directly import it, it'll be the wrong version
    Author = apps.get_model("catalog", "Author")
    for author in Author.objects.all():
        author.fullname = "%s %s" % (author.first_name, author.last_name)
        author.save()

# def forwards_func(apps, schema_editor):
#     # We get the model from the versioned app registry;
#     # if we directly import it, it'll be the wrong version
#     Country = apps.get_model("myapp", "Country")
#     db_alias = schema_editor.connection.alias
#     Country.objects.using(db_alias).bulk_create([
#         Country(name="USA", code="us"),
#         Country(name="France", code="fr"),
#     ])
#
#
# def reverse_func(apps, schema_editor):
#     # forwards_func() creates two Country instances,
#     # so reverse_func() should delete them.
#     Country = apps.get_model("myapp", "Country")
#     db_alias = schema_editor.connection.alias
#     Country.objects.using(db_alias).filter(name="USA", code="us").delete()
#     Country.objects.using(db_alias).filter(name="France", code="fr").delete()
#

class Migration(migrations.Migration):
    dependencies = [
        ('catalog', '0001_initial'),
    ]

    operations = [
        migrations.RunPython(comnine_names)
    ]
