    class Api::V1::ExamplesController < ApplicationController

      before_action :set_examples, only: [:show, :destroy]

      def index
        @examples = Example.all
        render json: @examples, status: 200
      end

      def create
        @example = Example.create(examples_params)
        if @example.save
          render json: @example, status: 201
        else
          render json: { errors: @example.errors.full_messages }, status: 422
        end
      end

      def show
        render json: @example = Example.find(params[:id])
      end

      def destroy
        @example.destroy
        render :show, status: :ok
      end

      private
      def set_examples
      @example = Example.find(params[:id])
      end

      def examples_params
        params.permit(:title, :translate)
      end

    end
