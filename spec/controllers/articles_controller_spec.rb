require 'rails_helper'

describe ArticlesController do
    describe '#index' do
        subject { get:index}
        it 'should return sucess response' do
            subject
            expect(response).to have_http_status(:ok)
        end
        it 'should return proper json' do 
            articles = create_list :article,1
            subject   
            articles.each_with_index do |article,index|
                expect(json_data[index]['attributes']).to eq({
                    "title" => article.title,
                    "content" => article.content,
                    "slug" => article.slug
                })
            end
        end
    end
end