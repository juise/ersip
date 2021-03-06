

# Module ersip_hdr_via #
* [Data Types](#types)
* [Function Index](#index)
* [Function Details](#functions)

<a name="types"></a>

## Data Types ##




### <a name="type-internal_sent_by">internal_sent_by()</a> ###


<pre><code>
internal_sent_by() = {sent_by, <a href="ersip_host.md#type-host">ersip_host:host()</a>, Port::<a href="inet.md#type-port_number">inet:port_number()</a> | default_port}
</code></pre>




### <a name="type-known_via_params">known_via_params()</a> ###


<pre><code>
known_via_params() = branch | maddr | received | ttl | rport
</code></pre>




### <a name="type-raw">raw()</a> ###


<pre><code>
raw() = #{protocol =&gt; binary(), version =&gt; binary(), transport =&gt; binary(), host =&gt; binary(), port =&gt; <a href="inet.md#type-port_number">inet:port_number()</a>, params =&gt; <a href="ersip_hparams.md#type-raw">ersip_hparams:raw()</a>, branch =&gt; binary(), maddr =&gt; binary(), received =&gt; binary(), ttl =&gt; non_neg_integer(), rport =&gt; <a href="#type-rport_value">rport_value()</a>}
</code></pre>

===================================================================
API
===================================================================



### <a name="type-rport_value">rport_value()</a> ###


<pre><code>
rport_value() = <a href="inet.md#type-port_number">inet:port_number()</a> | true
</code></pre>




### <a name="type-sent_by">sent_by()</a> ###


<pre><code>
sent_by() = {sent_by, <a href="ersip_host.md#type-host">ersip_host:host()</a>, Port::<a href="inet.md#type-port_number">inet:port_number()</a>}
</code></pre>




### <a name="type-sent_protocol">sent_protocol()</a> ###


<pre><code>
sent_protocol() = {sent_protocol, Protocol::binary(), ProtocolVersion::binary(), <a href="ersip_transport.md#type-transport">ersip_transport:transport()</a>}
</code></pre>




### <a name="type-ttl_value">ttl_value()</a> ###


<pre><code>
ttl_value() = 0..255
</code></pre>




### <a name="type-via">via()</a> ###


<pre><code>
via() = #via{sent_protocol = <a href="#type-sent_protocol">sent_protocol()</a>, sent_by = <a href="#type-internal_sent_by">internal_sent_by()</a>, hparams = <a href="ersip_hparams.md#type-hparams">ersip_hparams:hparams()</a>}
</code></pre>




### <a name="type-via_key">via_key()</a> ###


<pre><code>
via_key() = {<a href="#type-sent_protocol">sent_protocol()</a>, <a href="#type-sent_by">sent_by()</a>, <a href="#type-via_params_key">via_params_key()</a>}
</code></pre>




### <a name="type-via_params_key">via_params_key()</a> ###


<pre><code>
via_params_key() = #{branch =&gt; <a href="ersip_branch.md#type-branch">ersip_branch:branch()</a>, maddr =&gt; <a href="ersip_host.md#type-host">ersip_host:host()</a>, received =&gt; <a href="ersip_host.md#type-host">ersip_host:host()</a>, ttl =&gt; non_neg_integer(), rport =&gt; <a href="inet.md#type-port_number">inet:port_number()</a> | true, binary() =&gt; binary()}
</code></pre>

<a name="index"></a>

## Function Index ##


<table width="100%" border="1" cellspacing="0" cellpadding="2" summary="function index"><tr><td valign="top"><a href="#all_raw_params-1">all_raw_params/1</a></td><td>Get all Via parameters.</td></tr><tr><td valign="top"><a href="#assemble-1">assemble/1</a></td><td>Assemble Via as iolist().</td></tr><tr><td valign="top"><a href="#assemble_bin-1">assemble_bin/1</a></td><td>Assemble Via as binary().</td></tr><tr><td valign="top"><a href="#branch-1">branch/1</a></td><td>Get branch parameter.</td></tr><tr><td valign="top"><a href="#has_rport-1">has_rport/1</a></td><td>Check if Via has rport parameter.</td></tr><tr><td valign="top"><a href="#maddr-1">maddr/1</a></td><td>Get maddr parameter.</td></tr><tr><td valign="top"><a href="#make-1">make/1</a></td><td>Make Via header from binary.</td></tr><tr><td valign="top"><a href="#make_key-1">make_key/1</a></td><td>Make key that can be used to match transaction.</td></tr><tr><td valign="top"><a href="#new-3">new/3</a></td><td>Create new Via haeder by Host, Port and SIP transport.</td></tr><tr><td valign="top"><a href="#new-4">new/4</a></td><td>Create new Via haeder by Host, Port, SIP transport and branch parameter.</td></tr><tr><td valign="top"><a href="#parse-1">parse/1</a></td><td>Parse single Via header.</td></tr><tr><td valign="top"><a href="#raw-1">raw/1</a></td><td>Represent via as raw SIP header.</td></tr><tr><td valign="top"><a href="#raw_param-2">raw_param/2</a></td><td>Get Via parametr by it's name.</td></tr><tr><td valign="top"><a href="#received-1">received/1</a></td><td>Get received parameter.</td></tr><tr><td valign="top"><a href="#rport-1">rport/1</a></td><td>Get rport parameter value.</td></tr><tr><td valign="top"><a href="#sent_by-1">sent_by/1</a></td><td>Get Host and port from Via header.</td></tr><tr><td valign="top"><a href="#sent_by_key-1">sent_by_key/1</a></td><td>Make comparable sent_by (adjusted to be comparable as erlang
terms).</td></tr><tr><td valign="top"><a href="#sent_protocol-1">sent_protocol/1</a></td><td>Get sent protocol.</td></tr><tr><td valign="top"><a href="#set_branch-2">set_branch/2</a></td><td>Set branch parameter.</td></tr><tr><td valign="top"><a href="#set_maddr-2">set_maddr/2</a></td><td>Set maddr parameter.</td></tr><tr><td valign="top"><a href="#set_param-3">set_param/3</a></td><td>Get Via parameter.</td></tr><tr><td valign="top"><a href="#set_received-2">set_received/2</a></td><td>Set received parameter.</td></tr><tr><td valign="top"><a href="#set_rport-2">set_rport/2</a></td><td>Set rport parameter value.</td></tr><tr><td valign="top"><a href="#set_ttl-2">set_ttl/2</a></td><td>Set ttl parameter.</td></tr><tr><td valign="top"><a href="#topmost_via-1">topmost_via/1</a></td><td>Get topmost Via from SIP raw headers.</td></tr><tr><td valign="top"><a href="#ttl-1">ttl/1</a></td><td>Get ttl parameter.</td></tr></table>


<a name="functions"></a>

## Function Details ##

<a name="all_raw_params-1"></a>

### all_raw_params/1 ###

<pre><code>
all_raw_params(Via::<a href="#type-via">via()</a>) -&gt; [{binary(), binary()} | binary()]
</code></pre>
<br />

Get all Via parameters.

<a name="assemble-1"></a>

### assemble/1 ###

<pre><code>
assemble(Via::<a href="#type-via">via()</a>) -&gt; iolist()
</code></pre>
<br />

Assemble Via as iolist().

<a name="assemble_bin-1"></a>

### assemble_bin/1 ###

<pre><code>
assemble_bin(Via::<a href="#type-via">via()</a>) -&gt; binary()
</code></pre>
<br />

Assemble Via as binary().

<a name="branch-1"></a>

### branch/1 ###

<pre><code>
branch(Via::<a href="#type-via">via()</a>) -&gt; {ok, <a href="ersip_branch.md#type-branch">ersip_branch:branch()</a>} | undefined
</code></pre>
<br />

Get branch parameter.

<a name="has_rport-1"></a>

### has_rport/1 ###

<pre><code>
has_rport(Via::<a href="#type-via">via()</a>) -&gt; boolean()
</code></pre>
<br />

Check if Via has rport parameter.

<a name="maddr-1"></a>

### maddr/1 ###

<pre><code>
maddr(Via::<a href="#type-via">via()</a>) -&gt; {ok, <a href="ersip_host.md#type-host">ersip_host:host()</a>} | undefined
</code></pre>
<br />

Get maddr parameter.

<a name="make-1"></a>

### make/1 ###

<pre><code>
make(Bin::binary() | <a href="#type-raw">raw()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Make Via header from binary.

<a name="make_key-1"></a>

### make_key/1 ###

<pre><code>
make_key(Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via_key">via_key()</a>
</code></pre>
<br />

Make key that can be used to match transaction.

<a name="new-3"></a>

### new/3 ###

<pre><code>
new(Address::<a href="ersip_host.md#type-host">ersip_host:host()</a>, Port::<a href="inet.md#type-port_number">inet:port_number()</a>, Transport::<a href="ersip_transport.md#type-transport">ersip_transport:transport()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Create new Via haeder by Host, Port and SIP transport.

<a name="new-4"></a>

### new/4 ###

<pre><code>
new(Address::<a href="ersip_host.md#type-host">ersip_host:host()</a>, Port::<a href="inet.md#type-port_number">inet:port_number()</a>, Transport::<a href="ersip_transport.md#type-transport">ersip_transport:transport()</a>, Branch::<a href="ersip_branch.md#type-branch">ersip_branch:branch()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Create new Via haeder by Host, Port, SIP transport and branch parameter.

<a name="parse-1"></a>

### parse/1 ###

<pre><code>
parse(Binary::iolist()) -&gt; {ok, <a href="#type-via">via()</a>} | {error, term()}
</code></pre>
<br />

Parse single Via header

<a name="raw-1"></a>

### raw/1 ###

<pre><code>
raw(Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-raw">raw()</a>
</code></pre>
<br />

Represent via as raw SIP header.

<a name="raw_param-2"></a>

### raw_param/2 ###

<pre><code>
raw_param(ParamName::binary(), Via::<a href="#type-via">via()</a>) -&gt; {ok, ParamValue::binary()} | not_found
</code></pre>
<br />

Get Via parametr by it's name.

<a name="received-1"></a>

### received/1 ###

<pre><code>
received(Via::<a href="#type-via">via()</a>) -&gt; {ok, <a href="ersip_host.md#type-host">ersip_host:host()</a>} | undefined
</code></pre>
<br />

Get received parameter.

<a name="rport-1"></a>

### rport/1 ###

<pre><code>
rport(Via::<a href="#type-via">via()</a>) -&gt; {ok, <a href="#type-rport_value">rport_value()</a>} | undefined
</code></pre>
<br />

Get rport parameter value.  If rport parameter is set without
port number than functio returns {ok, true}.

<a name="sent_by-1"></a>

### sent_by/1 ###

<pre><code>
sent_by(Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-sent_by">sent_by()</a>
</code></pre>
<br />

Get Host and port from Via header.

<a name="sent_by_key-1"></a>

### sent_by_key/1 ###

<pre><code>
sent_by_key(Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-sent_by">sent_by()</a>
</code></pre>
<br />

Make comparable sent_by (adjusted to be comparable as erlang
terms).

<a name="sent_protocol-1"></a>

### sent_protocol/1 ###

<pre><code>
sent_protocol(Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-sent_protocol">sent_protocol()</a>
</code></pre>
<br />

Get sent protocol.

<a name="set_branch-2"></a>

### set_branch/2 ###

<pre><code>
set_branch(Branch::<a href="ersip_branch.md#type-branch">ersip_branch:branch()</a>, Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Set branch parameter.

<a name="set_maddr-2"></a>

### set_maddr/2 ###

<pre><code>
set_maddr(Host::<a href="ersip_host.md#type-host">ersip_host:host()</a>, Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Set maddr parameter.

<a name="set_param-3"></a>

### set_param/3 ###

<pre><code>
set_param(X1::<a href="#type-known_via_params">known_via_params()</a> | binary(), Value::term(), Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Get Via parameter.  This function supports known paramters
(deprecated) and binary parameters.

<a name="set_received-2"></a>

### set_received/2 ###

<pre><code>
set_received(Host::<a href="ersip_host.md#type-host">ersip_host:host()</a>, Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Set received parameter.

<a name="set_rport-2"></a>

### set_rport/2 ###

<pre><code>
set_rport(RPort::<a href="#type-rport_value">rport_value()</a>, Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Set rport parameter value.

<a name="set_ttl-2"></a>

### set_ttl/2 ###

<pre><code>
set_ttl(TTLValue::<a href="#type-ttl_value">ttl_value()</a>, Via::<a href="#type-via">via()</a>) -&gt; <a href="#type-via">via()</a>
</code></pre>
<br />

Set ttl parameter.

<a name="topmost_via-1"></a>

### topmost_via/1 ###

<pre><code>
topmost_via(Header::<a href="ersip_hdr.md#type-header">ersip_hdr:header()</a>) -&gt; {ok, <a href="#type-via">via()</a>} | {error, no_via}
</code></pre>
<br />

Get topmost Via from SIP raw headers.

<a name="ttl-1"></a>

### ttl/1 ###

<pre><code>
ttl(Via::<a href="#type-via">via()</a>) -&gt; {ok, <a href="#type-ttl_value">ttl_value()</a>} | undefined
</code></pre>
<br />

Get ttl parameter.

