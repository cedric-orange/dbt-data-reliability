{% test unstructured_data_validation(model, column_name, expectation_prompt, llm_model_name=none) %}
    {{ config(tags = ['elementary-tests']) }}
    {% set context = "You are a data validator specializing in validating unstructured data." %}
    {{ return(elementary.test_ai_data_validation(model, column_name, expectation_prompt, llm_model_name, context)) }}
{% endtest %} 