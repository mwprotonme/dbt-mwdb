{% docs dim_listings_cleansed__minimum_nights %}

Minimum number of nights required to rent this property.

Keep in mind that old listings might have 'minimum nights' set to 0 in the source tables. Our cleansing
algorighm updates this to '1'.

{% enddocs %}

{% docs __overview__ %}
AirBnb dbt project overview

Here is the schema of our input data:
![input schema](assets/input_schema.png)

{% enddocs %}

{% docs dim_hosts_cleansed__host_name %}

Host name contains string value, when is null, Anonymous value is added.

{% enddocs %}
