Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E31E14AF43
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Jan 2020 06:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7mvBPM0WkYlK/t6juBg5Y8Jh7dxaklX4PePPesLmSY=; b=aLp3nrPdaxb36u
	/Uz78BjstTtdCIpvHiI/kEwShtVlvGkpT8VWy9/lsiAKWNs92NRODfeHeAGcHWISJEo5ZJqQAuWyi
	HTPG8w2bVGVpVz23uNgG7Ti92SSgOtyO2VOK66GEM5yC+5BWeeZmPObpZwTFuHV/DvRc3bmK+j/0r
	P+qStz2SWH83QSGOK1H76i3eCcNTi9zSHnMIsFV7QLoQvKsksEwCLq6yJsi3ncUGbbYlFuO0/Q6dC
	035jFDp1dJoY4bclZ6PEnX3R0oL0mPSmx1crjrlEn2aNoA2oAxu3HCtqBVKnOc4fCNI3WxtyyYnCh
	7Wg8EAEU9/eOYdM45umw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJqp-0004dk-LN; Tue, 28 Jan 2020 05:55:51 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJqh-0004d4-5U
 for linux-mtd@lists.infradead.org; Tue, 28 Jan 2020 05:55:45 +0000
Received: by mail-io1-xd36.google.com with SMTP id e7so12905389iof.11
 for <linux-mtd@lists.infradead.org>; Mon, 27 Jan 2020 21:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0JuxovMN3RnVJSVvF1rN76R6py4FLWdilv57Ta+jaHk=;
 b=gIVX3ldyZAVk41QboDchvme88xyA0FbVcQHMjxc+1pQ9A94Vd8oYUJo+YvXEYttZw6
 fjnNRrL84EwnD8DvTW2zHCpMetrQBsrePiEIA+gLGPfESxrM5/lYz3h7dNQq1VuHM3k0
 yUTfgOH9xruIERVZ/mlsPC40gIDJukWq0lZZHm5M+xTzacWLgALNrJsq4MHI6fTeshKM
 nfIPw0AwKZp8e4qPd9sa7PHXNvNYJT3ATlfTwjqixfmd06umCJW0rfL5+wA6mCRd10VP
 0AUTBaneqwjN3fqqW8Sb7UjSh+3gSXh12n0tjaT+TjmxVAazhNkCr7FYCwSlfNdjb3X1
 I0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0JuxovMN3RnVJSVvF1rN76R6py4FLWdilv57Ta+jaHk=;
 b=bJd/Bt+7MMoPYWWjOl02IaQt74+HyIA2wqSonytGqaRHEBXdZMn60s2ziWJyVNN50h
 vACQjTr5aldJ6nR0JogrpcrOTLaKI/Df2VH2JCJyFRdQyhvbY1Rp2ts4YxjFnNqE87w+
 xpfR9BnShhrm9f2+gUV16mE99lNSqZ30Wn6Wp87f32NbYJftCfxeNdEVO0Os/l1Q9qPJ
 fTVqpHovsJIMvG1QnPDUBw294AwBZd6aB+tdu+CWs0RtIz6HjJHU8925is/ZqVGzdc3H
 oa9/RZ1uFTkVjNPYbSgZFZJISx8E/KTic+RymLs4jCD0DLixzsBW/lx1pbH0cmhtP06u
 Ai/A==
X-Gm-Message-State: APjAAAVFvuj3A+Iz+iW2MUK2WTGxvbjkEwWCYSrk6/JTPis0cD3Vys2U
 1VjZo0p46ymvKoNGODZ1AE2V/8g7aFVsiSDf7H0=
X-Google-Smtp-Source: APXvYqzTK0WLI+cgbrW2j7oZECVLSwLpoObNqWAhA1kmnu+ZlXQfoalkbhbt3nMQ/HhmkBlHeO5ByRMCIpZq4VRYp9M=
X-Received: by 2002:a02:ac0e:: with SMTP id a14mr10958709jao.117.1580190941529; 
 Mon, 27 Jan 2020 21:55:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 27 Jan 2020 21:55:40
 -0800 (PST)
In-Reply-To: <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz>
 <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 28 Jan 2020 16:55:40 +1100
Message-ID: <CAA=hcWSzXJr1eBxPWAK-aGDccwmJTBW-Zf6igUB+gf5LiPJB3Q@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_215543_239176_08B6AC3F 
X-CRM114-Status: GOOD (  39.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d36 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: connman <connman@lists.01.org>,
 Quentin Schulz <quentin.schulz@streamunlimited.com>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Andy Pont <andy.pont@sdcsystems.com>,
 Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgTGF1cmVudCwKCk9uIDEvMjgvMjAsIExhdXJlbnQgR2F1dGhpZXIgPGxhdXJlbnQuZ2F1dGhp
ZXJAc29jY2FzeXMuY29tPiB3cm90ZToKPiBIaSBKSCwKPgo+IEFzIHlvdSBhcmUgbm90IHByb3Zp
ZGluZyBlbm91Z2ggZGV0YWlscyBpbiB5b3VyIHJlcXVlc3Qgd2UgaGF2ZSB0bwo+IGd1ZXNzIHRo
ZSBuYXR1cmUgb2YKPiB0aGUgaXNzdWUgeW91IGFyZSBzZWVpbmcuCgpMZXQgbWUga25vdyB3aGF0
IGtpbmQgb2YgZGV0YWlscyBJIGhhdmVuJ3QgcHJvdmlkZWQuCgo+IEkgd2lsbCBqdXN0IHBvaW50
IG91dCBhIGZldyB0aGluZ3MgdGhhdCBjb3VsZCBoZWxwIGluIHlvdXIgc2l0dWF0aW9uLgo+Cj4g
SWYgdGhpcyBpcyBhIGZhaWx1cmUgdGhhdCBoYXBwZW5zIGFsbW9zdCBldmVyeSB0aW1lIGFmdGVy
IHlvdSBmbGFzaCBhCj4gbmV3IGltYWdlIGl0IGNvdWxkIGJlCj4gZHVlIHRvIE5BTkQgYmxvY2tz
IGJlaW5nIGJhZC4KClRoZXJlIHdhcyBvbmUgaW1hZ2UsIGJvb3RlZCBrZXJuZWwgZmluZSBmb3Ig
dGhlIGZpcnN0IGFuZCBzZWNvbmQKY3ljbGUsIHRoZW4gaXQgZ290IHNoZWxsIGNvbW1hbmRzIGVy
cm9yIGR1ZSB0byBsb3N0IGJ1c3lib3guIEkgZGlkIHNlZQpOQU5EIGJhZCBibG9ja3MgbGlzdCBk
dXJpbmcgYm9vdGluZywgYnV0IHRoYXQgc2hvdWxkIGJlIG1hbmFnZWQgYnkKTVRELCB3b24ndCBi
ZSBhIHByb2JsZW0gdG8gY2FzZSBrZXJuZWwgY3Jhc2ggb3IgbWlzc2luZyBidXN5Ym94LApyaWdo
dD8KCgo+IEFzIHlvdSBtZW50aW9uZWQgdGhhdCB5b3UgaGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCB0
aGlzIHN5c3RlbSBmb3IgYQo+IHllYXIgaXQgY291bGQgYmUgdGhhdCByZXBlYXRlZAo+IGZsYXNo
aW5nIG9mIFVCSSBpbWFnZXMgaGFzIGVuZGVkIHVwIGNhdXNpbmcgc29tZSBOQU5EIGJsb2NrcyB0
byBnbyBiYWQuCgpObywgSSBtZWFuIEkgaGF2ZSBiZWVuIHVzaW5nIFlvY3RvIHRvIGJ1aWxkIGlt
YWdlIGFuZCB0byBmbGFzaCB0byB0aGUKTkFORCBmb3IgYSB5ZWFyLCB0aGUgZGV2aWNlcyBJIGFt
IGN1cnJlbnRseSB1c2luZyBhY3R1YWxseSBhIG5ldwpyZXZpc2lvbiBoYXJkd2FyZSBkZXZpY2Us
IGl0IHdhcyBvbmx5IHVzZWQgZm9yIHRoZSBmaXJzdCB0aW1lIHdoZW4gdGhlCm5ldyBpbWFnZSB3
YXMgaW5zdGFsbGVkLCB0aGUgZmlyc3QgYW5kIHNlY29uZCBib290aW5nIHdhcyBnb29kLCB0aGUK
dGhpcmQgZ290IGJhZCBtaXNzaW5nIGJ1c3lib3ggYW5kIHNoZWxsIGNvbW1hbmQsIGNyYXNoZWQg
a2VybmVsCmJvb3RpbmcuCgo+IFdoZW4gdXNpbmcgVUJJIGl0IGlzIGEgZ29vZCBpZGVhIHRvIHVz
ZSBhIGZsYXNoaW5nIHByb2NlZHVyZSB0aGF0IHdpbGwKPiBwcmVzZXJ2ZSBVQkkgd2Vhci1sZXZl
bGxpbmcKPiBpbmZvcm1hdGlvbi4gQW4gZXhhbXBsZSBvZiBzdWNoIGEgcHJvY2VkdXJlIGNhbiBi
ZSBmb3VuZCBpbiBzZWN0aW9uCj4gNC40IG9mIHRoZSBmb2xsb3dpbmcgcGFnZToKPgo+IGh0dHA6
Ly92YXJpd2lraS5jb20vaW5kZXgucGhwP3RpdGxlPVUtQm9vdF9mZWF0dXJlcyNGbGFzaGluZ19V
QklGU190b19OQU5ECgpUaGFuIHlvdSBmb3IgdGhlIGxpbmssIHllcyB3ZSBoYXZlIGFscmVhZHkg
YmVlbiBwbGFuaW5nIHRvIHdvcmsgb24gYQpuZXcgcGFydGl0aW9uIHNjaGVtZSB0byBtb3ZlIE1U
RCBwYXJ0aXRpb25zIHRvIFVCSUZTIHZvbHVtZQpwYXJ0aXRpb25zLiBCdXQgSSBkb24ndCB0aGlu
ayB0aGUgY3VycmVudCBwcm9ibGVtIGlzIHJlbGF0ZWQgdG8gTkFORApiYWQgYmxvY2tzLgoKPiBU
aGVzZSBpbnN0cnVjdGlvbnMgKHViaSBwYXJ0L3ViaSByZW1vdmUvdWJpIGNyZWF0ZS91Ymkgd3Jp
dGUpIG5lZWQgdG8KPiBiZSBhZGp1c3RlZCBmb3IgeW91ciBzcGVjaWZpYwo+IGhhcmR3YXJlIGxh
eW91dCwgYnV0IHRoaXMgY2FuIGhlbHAuIEluIHNob3J0IHlvdSBzaG91bGQgdXBkYXRlCj4gaW5k
aXZpZHVhbCBVQklGUyB2b2x1bWVzIGluIHlvdXIgVUJJCj4gcGFydGl0aW9uIHJhdGhlciB0aGVu
IHJlZmxhc2ggdGhlIHdob2xlIFVCSSBwYXJ0aXRpb24uCj4KPiBBbm90aGVyIG9wdGlvbiBpcyB0
byB1c2UgdWJpZm9ybWF0IGZyb20gdGhlIHUtYm9vdCBjb21tYW5kIGxpbmUuIEZvcgo+IHRoaXMg
eW91IHdvdWxkIG5lZWQgdG8gcmVzZWFyY2gKPiB0aGUgc3ViamVjdCBieSB5b3Vyc2VsZi4KPgo+
IFVwZGF0aW5nIHlvdXIgVUJJRlMgdm9sdW1lcyB0aGlzIHdheSB5b3Ugc2hvdWxkIGJlIGFibGUg
dG8gZXh0ZW5kCj4gZ3JlYXRseSB0aGUgbGlmZSBvZiB5b3VyIE5BTkQgaWYKPiB5b3UgYXJlIGZs
YXNoaW5nIHlvdXIgZGV2ZWxvcG1lbnQgYm9hcmQgbXVsdGlwbGUgdGltZXMgYSBkYXkuCj4KPiBJ
IHdvdWxkIGxpa2UgdG8gYWxzbyBjb21tZW50IG9uIGEgcmVtYXJrIG1hZGUgYnkgc29tZW9uZSBl
bHNlIGFib3V0Cj4gVUJJRlMgYmVpbmcgc2FmZSBhY3Jvc3MKPiBwb3dlciBjeWNsZXM6Cj4KPiBX
aGlsZSB0aGUgYXNzZXJ0aW9uIHRoYXQgIlVCSUZTIGlzIHNhZmUgYWNyb3NzIHBvd2VyLWN5Y2xl
cyIgaXMgdHJ1ZQo+IGluIHRoZW9yeSBpbiBwcmFjdGljZSB5b3UgcHJvYmFibHkKPiBzaG91bGQg
YXZvaWQgdG8gcmVseSBvbiBpdCB0b28gbXVjaC4KClRoZXJlIGlzIG5vdCBwcmFjdGljYWwgd2Ug
Y2FuIGF2b2lkIGl0LCB0aGUgZGV2aWNlIGlzIGFuIElvVCBkZXZpY2UKaW5zdGFsbGVkIGFuZCBv
cGVyYXRlZCBhdXRvbWF0aWNhbGx5LCB0aGVyZSBpcyBub3QgcHJhY3RpY2FsIHdlIGNhbgpydW4g
Y29tbWFuZCB0byB0dXJuIGl0IG9uIGFuZCBvZmYuCgo+IE15IHJlY29tbWVuZGF0aW9ucyB0byBp
bXByb3ZlIHJlc2lzdGFuY2UgdG8gcG93ZXItY3ljbGVzIHdvdWxkIGJlIHRoZQo+IGZvbGxvd2lu
ZzoKPgo+IDEuIElmIHBvc3NpYmxlIG1vdW50IHlvdXIgVUJJRlMgcm9vdC1maWxlc3lzdGVtIGFz
IHJlYWQtb25seSwgYW5kIHdpbGwKPiBhdm9pZCBtb3N0IGlzc3Vlcy4gVGhpcyBtZWFucwo+ICAg
IHlvdSBzaG91bGQgdXNlIHRtcGZzIGZvciB0ZW1wb3Jhcnkvdm9sYXRpbGUgZmlsZXN5c3RlbXMu
Cj4gMi4gSWYgeW91ciByb290LWZpbGVzeXN0ZW0gY2Fubm90IGJlIHJlYWQtb25seSB0aGVuIHJl
bW91bnQgaXQgYXMKPiByZWFkLW9ubHkganVzdCBiZWZvcmUgdGhlIGZpbmFsIHNodXRkb3duCj4g
ICAgKHVzaW5nIGZvciBleGFtcGxlICJtb3VudCAtbyByZW1vdW50LHJvIC8iIGZvbGxvd2VkIGJ5
IGEgInN5bmMiKSBhcwo+IHRoaXMgd2lsbCBsaW1pdCB0aGUgcG9zc2liaWxpdHkgb2YgYQo+ICAg
IGNvcnJ1cHRpb24gb2YgdGhlIFVCSUZTIG9jY3VycmluZyBvbiB0aGUgbmV4dCByZWJvb3QuCj4K
PiBJIGhvcGUgdGhhdCB5b3Ugd2lsbCBmaW5kIHdoYXQgeW91ciBpc3N1ZSBpcy4KCj4gS2luZCBS
ZWdhcmRzLCBMYXVyZW50Lgo+Cj4gT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTo1MyBQTSBRdWVu
dGluIFNjaHVsego+IDxxdWVudGluLnNjaHVsekBzdHJlYW11bmxpbWl0ZWQuY29tPiB3cm90ZToK
Pj4KPj4gSGkgSkgsCj4+Cj4+IE9uIE1vbiwgSmFuIDI3LCAyMDIwIGF0IDEwOjEzOjM3UE0gKzEx
MDAsIEpIIHdyb3RlOgo+PiA+IEhpIEFuZHksCj4+ID4KPj4gPiBUaGFua3MgZm9yIHRoZSByZXNw
b25zZS4KPj4gPgo+PiA+IE9uIDEvMjcvMjAsIEFuZHkgUG9udCA8YW5keS5wb250QHNkY3N5c3Rl
bXMuY29tPiB3cm90ZToKPj4gPiA+IEpIIHdyb3RlLi4uCj4+ID4gPgo+PiA+ID4+VGhhdCB0aGUg
c2FtZSBwcm9ibGVtIG9mIG1pc3NpbmcgYnVzeWJveCB3YXMgbm90IGp1c3Qgb2NjdXJyZWQgZHVy
aW5nCj4+ID4gPj50aGUgZGV2aWNlIHJ1bm5pbmcgaW4gdGhlIG1pZGRsZSBvZiBvcGVyYXRpb24s
IGl0IHdhcyBhbHNvIG9jY3VycmVkCj4+ID4gPj5kdXJpbmcgYm9vdGluZyBpbWFnZSBmcm9tIE5B
TkQsIEkgc2F3IHNldmVyYWwgdGltZXMgdGhhdCB0aGUgZmlyc3QKPj4gPiA+PiBhbmQKPj4gPiA+
PnNlY29uZCBjeWNsZXMgb2YgYm9vdGluZyBpbWFnZSBmcm9tIE5BTkQgd2VyZSB3b3JraW5nIHdl
bGwsIHRoZW4gc29tZQo+PiA+ID4+Zm9sbG93aW5nIGJvb3RpbmcgcHJvY2VzcyB3b3VsZCBiZSBj
cmFzaGVkIGJ5IG1pc3NpbmcgYnVzeWJveCwgdGhlbgo+PiA+ID4+Y291bGQgbm90IHJ1biB3aG9s
ZSBzaGVsbCBjb21tYW5kcy4gSSBoYXZlIGJlZW4gcG9uZGVyaW5nIGlmIGl0IGNvdWxkCj4+ID4g
Pj5iZSBjYXVzZWQgYnkgTkFORCBpc3N1ZSBvciBuZXR3b3JrIHZpcnVzIC8gZmlzaHk/IEFwcHJl
Y2lhdGUgYW55Cj4+ID4gPj5jbHVlcy4KPj4gPiA+IFRoZSBmaXJzdCBzdGVwIGlzIGZvciB1cyB0
byB1bmRlcnN0YW5kIHdoYXQg4oCcbWlzc2luZ+KAnSBtZWFucz8gIEhhdmUKPj4gPiA+IHlvdQo+
PiA+ID4gZ290IGFueSBtZWNoYW5pc20gKFUtQm9vdCwgU0QgY2FyZCBib290LCBldGMuKSB0aGF0
IHdpbGwgYWxsb3cgeW91IHRvCj4+ID4gPiBtb3VudCBhbmQgbG9vayBhdCB0aGUgY29udGVudHMg
b2YgdGhlIE5BTkQgZmlsZSBzeXN0ZW0/Cj4+ID4KPj4gPiBNZWFucyB0aGF0IGJ1c3lib3ggd2Fz
IG5vdCB0aGVyZSBhbnltb3JlLCBpdCBteXN0ZXJpb3VzbHkgbG9zdCwgYWxsCj4+ID4gc2hlbGwg
Y29tbWFuZHMgd291bGQgbm8gbG9uZ2VyIGF2YWlsYWJsZS4gSXQgY2Fubm90IHRvIHJ1biBtb3Vu
dCBvcgo+PiA+IGFueSBzaGVsbCBjb21tYW5kcy4gVGhlcmUgd2FzIHR3byBzY2VuYXJpb3Mgd2hl
biB0aGF0IGhhcHBlbmVkOgo+PiA+Cj4+ID4gLSBJbiB0aGUgbWlkZGxlIG9mIHJ1bm5pbmcsIHRo
ZSBkZXZpY2UgYWxsIG9mIGNlcnRhaW4gY291bGQgbm90IHJ1bgo+PiA+IHNoZWxsIGNvbW1hbmRz
IGFuZCBmYWlsZWQgbXlzdGVyaW91c2x5Cj4+ID4KPj4gPiAtIER1cmluZyB0aGUgdS1ib290IGJv
b3Rpbmcga2VybmVsIHByb2Nlc3MsIHRoZXJlIHdlcmUgZnVsbCBlcnJvcnMgb2YKPj4gPiBmYWls
aW5nIHNoZWxsIGNvbW1hbmRzLiBMZXQgbWUgbWFrZSBpdCBjbGVhciwgIHRoYXQgYm9vdGluZyBl
cnJvciBkaWQKPj4gPiBub3Qgb2NjdXIgaW4gdGhlIGZpcnN0IG9yIHNlY29uZCBrZXJuZWwgYm9v
dGluZyBhZnRlciB0aGUgbmV3IGltYWdlCj4+ID4gaW5zdGFsbGF0aW9uLCBpdCBoYXBwZW5lZCBp
biB0aGUgZm9sbG93aW5nIGtlcm5lbCBib290aW5nLCBidXQgdGhlcmUKPj4gPiB3YXMgbm90aGlu
ZyB0byBkZWxldGUgYnVzeWJveCBhY2NpZGVudGFsbHksIGJ1c3lib3ggd2FzIGp1c3QKPj4gPiBt
eXN0ZXJpb3VzbHkgZGlzYXBwZWFyZWQuIEJlY2F1c2UgSSBjb3VsZCBub3QgcnVuIGxzLCBJIGRp
ZCBub3Qga25vdwo+PiA+IGlmIHRoZXJlIGFyZSBvdGhlciB0aGluZ3MgbWlzc2luZy4gSWYgeW91
IGFzayBob3cgSSBjb3VsZCBrbm93IHRoZQo+PiA+IGJ1c3lib3ggd2FzIG1pc3NpbmcsIEkgcmFu
IHRoZSB6SW1hZ2UtaW5pdHJhbWZzIHRvIGJvb3QgdGhlIGxpbnV4IGluCj4+ID4gUkFNLCB0aGVu
IG1vdW50IHRoZSB1YmkwIHRvIGZpbmQgIG91dCBidXN5Ym94IHdhcyBnb25lLgo+PiA+Cj4+ID4K
Pj4gPiA+IElmIHlvdSBsb29rIGF0IHRoZSAvYmluIGRpcmVjdG9yeSAobHMgLWxhIC9iaW4vYnVz
eSopIHdoYXQgZG8geW91Cj4+ID4gPiBzZWU/Cj4+ID4gPiBIYXZlIHRoZSBmaWxlcyBiZWVuIGRl
bGV0ZWQ/IFRydW5jYXRlZD8gWmVybyBsZW5ndGg/Cj4+ID4KPj4gPiBDb3VsZCBub3QgcnVuIGxz
IG9yIGFueSBzaGVsbCBjb21tYW5kcyB3aGVuIHRoZSBidXN5Ym94IHdhcyBtaXNzaW5nLgo+PiA+
Cj4+Cj4+IC9iaW4vbHMgLWxhIC9iaW4vYnVzeSogPwo+Pgo+PiBNYXliZSBzb21ldGhpbmcgaXMg
bWVzc2luZyB3aXRoIHRoZSBQQVRIIGVudmlyb25tZW50IHZhcmlhYmxlLiBPcgo+PiBzb21ldGhp
bmcgaXMgcmVtb3ZpbmcgdGhlIHN5bWxpbmtzIGZyb20gc29tZSBiaW5hcmllcyB0byBidXN5Ym94
Lgo+Pgo+PiA+ID4gV2hhdCBmaWxlIHN5c3RlbSBhcmUgeW91IHVzaW5nIG9uIHRoZSBOQU5EIGZs
YXNoPyAgSG93IGFyZSB0aGUKPj4gPiA+IGRldmljZXMKPj4gPiA+IGJlaW5nIHJlc2V0IGR1cmlu
ZyB0aGUgdmFyaW91cyBib290IGN5Y2xlcz8gIElmIGl0IGlzIGEgaGFyZHdhcmUKPj4gPiA+IHJl
c2V0Cj4+ID4gPiB0aGVuIHNvbWUgZmlsZSBzeXN0ZW1zIGFyZSBsZXNzIHJlc2lsaWVudCB0byBp
dCB0aGFuIG90aGVycyBidXQgSQo+PiA+ID4gd291bGQKPj4gPiA+IGV4cGVjdCBpbiB0aGF0IGNh
c2UgbW9yZSBmdW5kYW1lbnRhbCBib290IGlzc3Vlcy4KPj4gPgo+PiA+IFVCSUZTLCBtb3N0IGRl
dmljZSByZXNldCBvciBib290IGN5Y2xlcyB3ZXJlIGNhbGxpbmcgaGFsdCBvciByZWJvb3QsCj4+
ID4gYnV0IGl0IHNvbWV0aW1lIGl0IGNvdWxkIGp1c3QgdXNlIHBvd2VyIGN5Y2xlLgo+PiA+Cj4+
Cj4+IElJUkMsIFVCSUZTIGlzIHNhZmUgZnJvbSBwb3dlciBjeWNsZXMuCj4+Cj4+IFF1ZW50aW4K
Pj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0KPj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNz
YWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuCj4+Cj4+IFZpZXcvUmVwbHkgT25saW5lICgjNDgxNjEp
Ogo+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzQ4MTYx
Cj4+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210Lzcw
MTI4MjQ1LzM2MTgzNTQKPj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcKPj4gVW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9n
L3lvY3RvL3Vuc3ViCj4+IFtsYXVyZW50LmdhdXRoaWVyQHNvY2Nhc3lzLmNvbV0KPj4gLT0tPS09
LT0tPS09LT0tPS09LT0tPS0KPgo+Cj4KPiAtLQo+IExhdXJlbnQgR2F1dGhpZXIKPiBQaG9uZTog
KzMzIDYzMCA0ODMgNDI5Cj4gaHR0cDovL3NvY2Nhc3lzLmNvbQo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtbXRkLwo=
