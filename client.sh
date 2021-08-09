#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for Screenshot Capture API.
#
# LICENSE:
# 
#
# CONTACT:
# 
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statemets
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::token"]=1
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::hash"]=1
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::url"]=1
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::fileType"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::ttl"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::invalidate"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::full"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::lazyload_scroll"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::delay"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::width"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::height"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::quality"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::scale"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::x"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::y"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::redirect"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::language"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::random_user_agent"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::user_agent"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::headers"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::cookies"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::css"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::js"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::wait"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::element"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::timezone"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::device"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::latitude"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::longitude"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::accuracy"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::proxy"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::adblock"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderAuthenticated:::hide_cookie_banners"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::token"]=1
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::url"]=1
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::fileType"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::ttl"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::invalidate"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::full"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::lazyload_scroll"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::delay"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::width"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::height"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::quality"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::scale"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::x"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::y"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::redirect"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::language"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::random_user_agent"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::user_agent"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::headers"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::cookies"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::css"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::js"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::wait"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::element"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::timezone"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::device"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::latitude"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::longitude"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::accuracy"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::proxy"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::adblock"]=0
operation_parameters_minimum_occurrences["placeScreenshotOrderUnauthenticated:::hide_cookie_banners"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::token"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::hash"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::url"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::fileType"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::ttl"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::invalidate"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::full"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::lazyload_scroll"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::delay"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::width"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::height"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::quality"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::scale"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::x"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::y"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::redirect"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::language"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::random_user_agent"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::user_agent"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::headers"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::cookies"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::css"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::js"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::wait"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::element"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::timezone"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::device"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::latitude"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::longitude"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::accuracy"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::proxy"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::adblock"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderAuthenticated:::hide_cookie_banners"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::token"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::url"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::fileType"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::ttl"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::invalidate"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::full"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::lazyload_scroll"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::delay"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::width"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::height"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::quality"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::scale"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::x"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::y"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::redirect"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::language"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::random_user_agent"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::user_agent"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::headers"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::cookies"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::css"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::js"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::wait"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::element"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::timezone"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::device"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::latitude"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::longitude"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::accuracy"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::proxy"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::adblock"]=0
operation_parameters_maximum_occurrences["placeScreenshotOrderUnauthenticated:::hide_cookie_banners"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::token"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::hash"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::url"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::fileType"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::ttl"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::invalidate"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::full"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::lazyload_scroll"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::delay"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::width"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::height"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::quality"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::scale"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::x"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::y"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::redirect"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::language"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::random_user_agent"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::user_agent"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::headers"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::cookies"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::css"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::js"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::wait"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::element"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::timezone"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::device"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::latitude"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::longitude"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::accuracy"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::proxy"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::adblock"]=""
operation_parameters_collection_type["placeScreenshotOrderAuthenticated:::hide_cookie_banners"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::token"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::url"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::fileType"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::ttl"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::invalidate"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::full"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::lazyload_scroll"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::delay"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::width"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::height"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::quality"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::scale"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::x"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::y"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::redirect"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::language"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::random_user_agent"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::user_agent"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::headers"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::cookies"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::css"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::js"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::wait"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::element"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::timezone"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::device"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::latitude"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::longitude"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::accuracy"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::proxy"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::adblock"]=""
operation_parameters_collection_type["placeScreenshotOrderUnauthenticated:::hide_cookie_banners"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'mutli' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}Screenshot Capture API command line client (API version 1.0.0)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[screenshot]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}placeScreenshotOrderAuthenticated${OFF};
  ${CYAN}placeScreenshotOrderUnauthenticated${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://api.webseite-herunterladen.de')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}Screenshot Capture API command line client (API version 1.0.0)${OFF}"
    echo ""
    echo -e "License: "
    echo -e "Contact: "
    echo ""
read -r -d '' appdescription <<EOF

Webseite-Herunterladen.de Screenshot Capture is a very simple but powerful screenshot API that anyone can easily use to create pixel-perfect website screenshots. It always uses a recent version of Chrome to ensure that all modern web features are fully supported and rendering is exactly as your customers would expect.
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}Screenshot Capture API command line client (API version 1.0.0)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for placeScreenshotOrderAuthenticated operation
#
##############################################################################
print_placeScreenshotOrderAuthenticated_help() {
    echo ""
    echo -e "${BOLD}${WHITE}placeScreenshotOrderAuthenticated - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Webseite-Herunterladen.de Screenshot Capture is a very simple but powerful screenshot API that anyone can easily use to create pixel-perfect website screenshots. It always uses a recent version of Chrome to ensure that all modern web features are fully supported and rendering is exactly as your customers would expect." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}token${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A valid token is needed to make paid API calls. Tokens can be managed from your account. ${YELLOW}Specify as: token=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hash${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The hash value is for authenticated requests. If you want to publish this URL, you should use the authenticated requests. ${YELLOW}Specify as: hash=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}url${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The URL of the website you want to capture. Please include the protocol (http:// or https://).${YELLOW} Specify as: url=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fileType${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The image file format of the captured screenshot. Either png, jpeg or PDF with 72 dpi.${YELLOW} Specify as: fileType=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}ttl${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of seconds the capture file is cached by our CDN. An API request that is loaded through the cache does not count as a paid request. You can set a number of seconds from 0 seconds up to 2592000 seconds. This is a maximum of 30 days.${YELLOW} Specify as: ttl=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invalidate${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - Force the API to invalidate the cache and capture a new screenshot. This call costs you additional money, because a call of a cache hit is not charged.${YELLOW} Specify as: invalidate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}full${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - Set this parameter to true if you want to screenshot the whole web page in full size.${YELLOW} Specify as: full=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}lazyload_scroll${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Set this parameter to true to scroll down through the entire page before taking a screenshot. This is useful for triggering animations or lazy load elements in full screen.${YELLOW} Specify as: lazyload_scroll=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}delay${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The delay in milliseconds to wait after the page loads before taking the screenshot. This is in milliseconds. One second is 1000 milliseconds. From 0 milliseconds to a maximum of 10,000 milliseconds.${YELLOW} Specify as: delay=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}width${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1920)${OFF} - The width, in pixels, of the browser viewport to use.${YELLOW} Specify as: width=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}height${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1080)${OFF} - The height, in pixels, of the browser viewport to use. Ignored if you set full to true.${YELLOW} Specify as: height=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}quality${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 90)${OFF} - The quality of the image between 0 and 100. This works only for the jpeg format, for PNG images the parameter is applied only during compression.${YELLOW} Specify as: quality=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scale${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1.0)${OFF} - The scale factor of the device to use when taking the screenshot. For example, a scale factor of 2 produces a high-resolution screenshot suitable for viewing on Retina devices. The larger the scale factor, the larger the screenshot produced.${YELLOW} Specify as: scale=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The starting point of a section screenshot on the X axis.${YELLOW} Specify as: x=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}y${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The starting point of a section screenshot on the Y axis.${YELLOW} Specify as: y=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}redirect${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If you set Redirect, the response will be a 302 redirect to the screenshot file in our CDN.${YELLOW} Specify as: redirect=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}language${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sets the Accept-Language header on requests to the target URL so that you can take screenshots from a website with a specific language.${YELLOW} Specify as: language=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}random_user_agent${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Sets a random user agent header to emulate a different devices when taking screenshots.${YELLOW} Specify as: random_user_agent=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user_agent${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sets the user agent header to emulate a specific device when taking screenshots.${YELLOW} Specify as: user_agent=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}headers${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - A semicolon-separated list of header parameters to be used when capturing the screenshot. Each header should be passed as a key-value pair and multiple pairs should be separated by a semicolon.${YELLOW} Specify as: headers=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}cookies${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - A semicolon-separated list of cookies to be used when capturing the screenshot. Each cookies should be passed as a key-value pair and multiple pairs should be separated by a semicolon.${YELLOW} Specify as: cookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}css${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Inject your custom CSS.${YELLOW} Specify as: css=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}js${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Inject your custom Javascript.${YELLOW} Specify as: js=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wait${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Wait until the specified CSS selector matches an element present in the page before taking a screenshot. The process is canceled after 60 seconds.${YELLOW} Specify as: wait=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}element${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Takes a screenshot of the first element matched by the specified CSS selector. This is ignored if full is true. (This option cannot be used with the PDF export format.)${YELLOW} Specify as: element=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}timezone${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Europe/Berlin)${OFF} - The IANA time zone identifier used for this capture.${YELLOW} Specify as: timezone=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}device${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The device used in the emulation.${YELLOW} Specify as: device=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}latitude${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0.0)${OFF} - The latitude used in the emulation of the geo-location.${YELLOW} Specify as: latitude=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}longitude${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0.0)${OFF} - The longitude used in the emulation of the geo-location.${YELLOW} Specify as: longitude=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}accuracy${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 2.0)${OFF} - The accuracy in meters used in the emulation of the geo-location.${YELLOW} Specify as: accuracy=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}proxy${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Use an address of a proxy server through which the screenshot should be taken. The proxy address should be formatted as http://username:password@proxyserver.com:31280${YELLOW} Specify as: proxy=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}adblock${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Prevent ads from being displayed. Block requests from popular ad networks and hide frequent ads.${YELLOW} Specify as: adblock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hide_cookie_banners${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Prevent cookie banners and pop-ups from being displayed. The best possible result is tried.${YELLOW} Specify as: hide_cookie_banners=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;the requested screenshot as binary${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}X-REMAINING-QUOTA-PREPAID${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}X-REMAINING-QUOTA${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Content-Type${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Location${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
    code=302
    echo -e "${result_color_table[${code:0:1}]}  302;the requested screenshot as redirect${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}X-REMAINING-QUOTA-PREPAID${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}X-REMAINING-QUOTA${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Location${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
    code=0
    echo -e "${result_color_table[${code:0:1}]}  0;unexpected error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}Content-Type${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
}
##############################################################################
#
# Print help for placeScreenshotOrderUnauthenticated operation
#
##############################################################################
print_placeScreenshotOrderUnauthenticated_help() {
    echo ""
    echo -e "${BOLD}${WHITE}placeScreenshotOrderUnauthenticated - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Webseite-Herunterladen.de Screenshot Capture is a very simple but powerful screenshot API that anyone can easily use to create pixel-perfect website screenshots. It always uses a recent version of Chrome to ensure that all modern web features are fully supported and rendering is exactly as your customers would expect." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}token${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - A valid token is needed to make paid API calls. Tokens can be managed from your account. ${YELLOW}Specify as: token=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}url${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - The URL of the website you want to capture. Please include the protocol (http:// or https://).${YELLOW} Specify as: url=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}fileType${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The image file format of the captured screenshot. Either png, jpeg or PDF with 72 dpi.${YELLOW} Specify as: fileType=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}ttl${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - Number of seconds the capture file is cached by our CDN. An API request that is loaded through the cache does not count as a paid request. You can set a number of seconds from 0 seconds up to 2592000 seconds. This is a maximum of 30 days.${YELLOW} Specify as: ttl=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}invalidate${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - Force the API to invalidate the cache and capture a new screenshot. This call costs you additional money, because a call of a cache hit is not charged.${YELLOW} Specify as: invalidate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}full${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: null)${OFF} - Set this parameter to true if you want to screenshot the whole web page in full size.${YELLOW} Specify as: full=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}lazyload_scroll${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Set this parameter to true to scroll down through the entire page before taking a screenshot. This is useful for triggering animations or lazy load elements in full screen.${YELLOW} Specify as: lazyload_scroll=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}delay${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The delay in milliseconds to wait after the page loads before taking the screenshot. This is in milliseconds. One second is 1000 milliseconds. From 0 milliseconds to a maximum of 10,000 milliseconds.${YELLOW} Specify as: delay=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}width${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1920)${OFF} - The width, in pixels, of the browser viewport to use.${YELLOW} Specify as: width=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}height${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1080)${OFF} - The height, in pixels, of the browser viewport to use. Ignored if you set full to true.${YELLOW} Specify as: height=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}quality${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 90)${OFF} - The quality of the image between 0 and 100. This works only for the jpeg format, for PNG images the parameter is applied only during compression.${YELLOW} Specify as: quality=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}scale${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 1.0)${OFF} - The scale factor of the device to use when taking the screenshot. For example, a scale factor of 2 produces a high-resolution screenshot suitable for viewing on Retina devices. The larger the scale factor, the larger the screenshot produced.${YELLOW} Specify as: scale=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}x${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The starting point of a section screenshot on the X axis.${YELLOW} Specify as: x=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}y${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0)${OFF} - The starting point of a section screenshot on the Y axis.${YELLOW} Specify as: y=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}redirect${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - If you set Redirect, the response will be a 302 redirect to the screenshot file in our CDN.${YELLOW} Specify as: redirect=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}language${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sets the Accept-Language header on requests to the target URL so that you can take screenshots from a website with a specific language.${YELLOW} Specify as: language=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}random_user_agent${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Sets a random user agent header to emulate a different devices when taking screenshots.${YELLOW} Specify as: random_user_agent=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user_agent${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Sets the user agent header to emulate a specific device when taking screenshots.${YELLOW} Specify as: user_agent=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}headers${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - A semicolon-separated list of header parameters to be used when capturing the screenshot. Each header should be passed as a key-value pair and multiple pairs should be separated by a semicolon.${YELLOW} Specify as: headers=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}cookies${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - A semicolon-separated list of cookies to be used when capturing the screenshot. Each cookies should be passed as a key-value pair and multiple pairs should be separated by a semicolon.${YELLOW} Specify as: cookies=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}css${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Inject your custom CSS.${YELLOW} Specify as: css=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}js${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Inject your custom Javascript.${YELLOW} Specify as: js=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}wait${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Wait until the specified CSS selector matches an element present in the page before taking a screenshot. The process is canceled after 60 seconds.${YELLOW} Specify as: wait=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}element${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Takes a screenshot of the first element matched by the specified CSS selector. This is ignored if full is true. (This option cannot be used with the PDF export format.)${YELLOW} Specify as: element=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}timezone${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: Europe/Berlin)${OFF} - The IANA time zone identifier used for this capture.${YELLOW} Specify as: timezone=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}device${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The device used in the emulation.${YELLOW} Specify as: device=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}latitude${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0.0)${OFF} - The latitude used in the emulation of the geo-location.${YELLOW} Specify as: latitude=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}longitude${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 0.0)${OFF} - The longitude used in the emulation of the geo-location.${YELLOW} Specify as: longitude=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}accuracy${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: 2.0)${OFF} - The accuracy in meters used in the emulation of the geo-location.${YELLOW} Specify as: accuracy=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}proxy${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Use an address of a proxy server through which the screenshot should be taken. The proxy address should be formatted as http://username:password@proxyserver.com:31280${YELLOW} Specify as: proxy=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}adblock${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Prevent ads from being displayed. Block requests from popular ad networks and hide frequent ads.${YELLOW} Specify as: adblock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}hide_cookie_banners${OFF} ${BLUE}[boolean]${OFF} ${CYAN}(default: false)${OFF} - Prevent cookie banners and pop-ups from being displayed. The best possible result is tried.${YELLOW} Specify as: hide_cookie_banners=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;the requested screenshot as binary${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}X-REMAINING-QUOTA-PREPAID${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}X-REMAINING-QUOTA${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Content-Type${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Location${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
    code=302
    echo -e "${result_color_table[${code:0:1}]}  302;the requested screenshot as redirect${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}X-REMAINING-QUOTA-PREPAID${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}X-REMAINING-QUOTA${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
        echo -e "       ${BLUE}Location${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
    code=0
    echo -e "${result_color_table[${code:0:1}]}  0;unexpected error${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
        echo -e "       ${BOLD}${WHITE}Response headers${OFF}"
        echo -e "       ${BLUE}Content-Type${OFF} - " | paste -sd' ' | fold -sw 80 | sed '2,$s/^/        /'
}


##############################################################################
#
# Call placeScreenshotOrderAuthenticated operation
#
##############################################################################
call_placeScreenshotOrderAuthenticated() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(token hash)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(url fileType ttl invalidate full lazyload_scroll delay width height quality scale x y redirect language random_user_agent user_agent headers cookies css js wait element timezone device latitude longitude accuracy proxy adblock hide_cookie_banners)
    local path

    if ! path=$(build_request_path "/v1/capture/{token}/{hash}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call placeScreenshotOrderUnauthenticated operation
#
##############################################################################
call_placeScreenshotOrderUnauthenticated() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(token)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(url fileType ttl invalidate full lazyload_scroll delay width height quality scale x y redirect language random_user_agent user_agent headers cookies css js wait element timezone device latitude longitude accuracy proxy adblock hide_cookie_banners)
    local path

    if ! path=$(build_request_path "/v1/capture/{token}" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    placeScreenshotOrderAuthenticated)
    operation="placeScreenshotOrderAuthenticated"
    ;;
    placeScreenshotOrderUnauthenticated)
    operation="placeScreenshotOrderUnauthenticated"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without qoutes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +\([^=]\):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    placeScreenshotOrderAuthenticated)
    call_placeScreenshotOrderAuthenticated
    ;;
    placeScreenshotOrderUnauthenticated)
    call_placeScreenshotOrderUnauthenticated
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
