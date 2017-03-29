    class Api::V1::PhrasesController < ApplicationController

      before_action :set_phrases, only: [:show, :destroy]

      def index
        @phrases = Phrase.all
        render json: @phrases, status: 200
      end

      def create
        @phrase = Phrase.create(phrases_params)
        if @phrase.save
          render json: @phrase, status: 201
        else
          render json: { errors: @phrase.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @phrase = Phrase.find(params[:id])
      end

      def destroy
        @phrase.destroy
        render :show, status: :ok
      end

      private
      def set_phrases
      @phrase = Phrase.find(params[:id])
      end

      def phrases_params
        params.permit(:title, :translate)
      end

    end
