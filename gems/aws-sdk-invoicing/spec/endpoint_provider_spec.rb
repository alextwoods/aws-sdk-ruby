# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require_relative 'spec_helper'

module Aws::Invoicing
  describe EndpointProvider do
    subject { Aws::Invoicing::EndpointProvider.new }

    context "For custom endpoint with region not set and fips disabled" do
      let(:expected) do
        {"endpoint"=>{"url"=>"https://example.com"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://example.com", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For custom endpoint with fips enabled" do
      let(:expected) do
        {"error"=>"Invalid Configuration: FIPS and custom endpoint are not supported"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:endpoint=>"https://example.com", :use_fips=>true})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

    context "For region us-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1"}]}, "url"=>"https://invoicing-fips.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-east-1"}]}, "url"=>"https://invoicing.us-east-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-east-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-northwest-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-northwest-1"}]}, "url"=>"https://invoicing-fips.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region cn-northwest-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"cn-northwest-1"}]}, "url"=>"https://invoicing.cn-northwest-1.api.amazonwebservices.com.cn"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"cn-northwest-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1"}]}, "url"=>"https://invoicing-fips.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-gov-west-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-gov-west-1"}]}, "url"=>"https://invoicing.us-gov-west-1.api.aws"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-gov-west-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-iso-east-1"}]}, "url"=>"https://invoicing-fips.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-iso-east-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-iso-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-iso-east-1"}]}, "url"=>"https://invoicing.us-iso-east-1.c2s.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-iso-east-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isob-east-1"}]}, "url"=>"https://invoicing-fips.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isob-east-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isob-east-1"}]}, "url"=>"https://invoicing.us-isob-east-1.sc2s.sgov.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isob-east-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-isoe-west-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"eu-isoe-west-1"}]}, "url"=>"https://invoicing-fips.eu-isoe-west-1.cloud.adc-e.uk"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-isoe-west-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region eu-isoe-west-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"eu-isoe-west-1"}]}, "url"=>"https://invoicing.eu-isoe-west-1.cloud.adc-e.uk"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"eu-isoe-west-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isof-south-1 with FIPS enabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isof-south-1"}]}, "url"=>"https://invoicing-fips.us-isof-south-1.csp.hci.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isof-south-1", :use_fips=>true})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "For region us-isof-south-1 with FIPS disabled and DualStack enabled" do
      let(:expected) do
        {"endpoint"=>{"properties"=>{"authSchemes"=>[{"name"=>"sigv4", "signingRegion"=>"us-isof-south-1"}]}, "url"=>"https://invoicing.us-isof-south-1.csp.hci.ic.gov"}}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{:region=>"us-isof-south-1", :use_fips=>false})
        endpoint = subject.resolve_endpoint(params)
        expect(endpoint.url).to eq(expected['endpoint']['url'])
        expect(endpoint.headers).to eq(expected['endpoint']['headers'] || {})
        expect(endpoint.properties).to eq(expected['endpoint']['properties'] || {})
      end
    end

    context "Missing region" do
      let(:expected) do
        {"error"=>"Invalid Configuration: Missing Region"}
      end

      it 'produces the expected output from the EndpointProvider' do
        params = EndpointParameters.new(**{})
        expect do
          subject.resolve_endpoint(params)
        end.to raise_error(ArgumentError, expected['error'])
      end
    end

  end
end
