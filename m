Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A46DA037E
	for <lists+linux-mtd@lfdr.de>; Wed, 28 Aug 2019 15:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N05BzOTTUWyK3dvYylabKTkC0C0y36AhxCfyN3SDkWM=; b=AF/6EGZwDurtzH
	W/2Ej4LifEVHgwf11latBzvhQ/tIsmkt+NKppGrhzcujs/x5xGD87zGUCmPgI7eqYDH0rESjSLoyv
	Kqp+u3C35tM76clbNIlQ3Vd5TzRWWRYDlOFqdi6a2f+bUy+RP4SFqmvzhhzTg8XqdeqOPA0ucau/l
	D5ots7J4+Srb8pGTyuPHT845ck6sV0i0zImj5XLz7xUo3capix+nD2/BFDpL7Ro+al1MkWZfJI1yK
	ocadG4/oT3amuBe1MuIbZE1lKCvfHctefnpOAXJFSFlwcZOpG8H729TCQyODpPqlGxxmHaXPbLgJx
	O2Uq4dR9ayRLb/C1+Gpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yAS-0002SM-98; Wed, 28 Aug 2019 13:39:20 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yAA-0002R8-KH
 for linux-mtd@lists.infradead.org; Wed, 28 Aug 2019 13:39:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id x15so1491609pgg.8
 for <linux-mtd@lists.infradead.org>; Wed, 28 Aug 2019 06:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KRrDPF8vWNgdGwVdaeCQd0c0JBgRCBPXNjVf92obFfM=;
 b=iCQ0vQk7CVtiRa7ZqkZvRD9ANYFnwXiZj+vCIalMtdKc545SJbaMO4b3LwDrGgjm+K
 BA732qtJhpLyTcu/p9FWSHmokMe7GxPjw8O53pSN0APjVvx30fJOClizRTmFOB1DiXnL
 5dF//GAWHwCT9zIawC/cCgjZ1SkpNauplb1rCJO84ZZuLuNT5/SWGRawrisNL5ykpxxb
 YfuzWNdgrcqPEnxpOrZ1Wu1uPa3th3RgoKNZMhJVO+Qv7ipDWxNqOBPIKPE965AU+jg6
 pFnZVfKiIH60j7/ZETARMfwq+4WHC7dOCMJB+rY3VL62avXCHc6XRDOJXIcXELBjG3WQ
 7bBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KRrDPF8vWNgdGwVdaeCQd0c0JBgRCBPXNjVf92obFfM=;
 b=bx5aN8cxoUdzFXvk08WeZMsiNXC3j0+LAM5JlWRJyvB7FQXON7nDYqiRwi2eIcyNs0
 BWxf5CyiYxtKi2tAZ2RopWnmNP6/HmXDJkWjjl0OANOqE6mETCHyVMk95r+JxvPiLsce
 vuy9heU6rfE0UC0ofkLnmmFh+WKD4+0yUD8U+NuCO2XU4/xGN0w5mjRU+NbXeUtNQRSE
 QIlYcQ5EmZhhUZfnhLVGfyPauap+CJmaalyh1KcoHmJmsUpOi72Qj5/CA1SwmN9nAL4l
 1BWbT+E3tkSLLxccsBADxrAe7oLRFCGC6guIbPz25740vRuN/+vdyZAlFu/gnejCN8MZ
 hlnQ==
X-Gm-Message-State: APjAAAUofY7R1tkU58kXP2Snd1JOWngsxwdP7HaFOR33lDKqz+g1GCXC
 nsoX/fls85rrVwTfiVZIxCoC5iAeW9eb0WvFe4Q=
X-Google-Smtp-Source: APXvYqwD8xktO1FYHmB/BU/xs9gWbUCYqD9cD6T17qOQ0dJBDTVy7dPIwRUIx9lfoHkV+R7doRwFQXaLvToRTBZiIIY=
X-Received: by 2002:a62:60c7:: with SMTP id u190mr4815077pfb.54.1566999541092; 
 Wed, 28 Aug 2019 06:39:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJA2DFr3Vgk5ie=V5YitZr8HaiXWuQ+SKsHzzmLBFnhyeg@mail.gmail.com>
 <23922253.ayd0uQntjt@blindfold>
 <CAO1O6se0aPh2FScDStqrK50PPipBbsgEnEPbMHvOdXt2cbxtvA@mail.gmail.com>
 <CAFLxGvxoR2kWoEz38QfO2sZDh4=4KXHBm9OrzXAQJWAR8Shmew@mail.gmail.com>
In-Reply-To: <CAFLxGvxoR2kWoEz38QfO2sZDh4=4KXHBm9OrzXAQJWAR8Shmew@mail.gmail.com>
From: Emil Lenngren <emil.lenngren@gmail.com>
Date: Wed, 28 Aug 2019 15:38:48 +0200
Message-ID: <CAO1O6sdEw2xjmKQFEA6YXE5vLAtd90ew4t_zynRUvK_ZztDp0w@mail.gmail.com>
Subject: Re: [PATCH 1/1] ubi: Allow ubiblock devices nodes to be created by
 volume name instead of volume ID.
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_063902_693282_D651AF8C 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.lenngren[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Richard Weinberger <richard@nod.at>,
 linux-mtd <linux-mtd@lists.infradead.org>, Patrick Doyle <wpdster@gmail.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgUmljaGFyZCwKCkRlbiBzw7ZuIDE4IGF1Zy4gMjAxOSBrbCAyMjo1MCBza3JldiBSaWNoYXJk
IFdlaW5iZXJnZXIKPHJpY2hhcmQud2VpbmJlcmdlckBnbWFpbC5jb20+Ogo+Cj4gT24gV2VkLCBB
dWcgMTQsIDIwMTkgYXQgMjozNCBQTSBFbWlsIExlbm5ncmVuIDxlbWlsLmxlbm5ncmVuQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+IElzbid0IHRoaXMgd2h5IHdlIGhhdmUgdWRldiwgdG8gY3JlYXRl
IGZhbmN5IGJ5LWlkL2J5LXBhdGgvLi4uIG5hbWluZyBjb252ZW50aW9ucz8KPiA+ID4KPiA+ID4g
VGhhbmtzLAo+ID4gPiAvL3JpY2hhcmQKPiA+Cj4gPiBJIGFjdHVhbGx5IGltcGxlbWVudGVkIHRo
ZSBzYW1lIGNoYW5nZSBzb21lIHRpbWUgYWdvLCBmb3IgdGhlIGV4YWN0Cj4gPiBzYW1lIHJlYXNv
biAoc3dhcHBpbmcgdHdvIHZvbHVtZXMgYW5kIHRoZW4gcmVib290KS4gUmVmZXJyaW5nIHRvIGFu
Cj4gPiB1Ymkgdm9sdW1lIGJ5IG5hbWUgaXMgbW9yZSBjb252ZW5pZW50IHRoYW4gdm9sdW1lIG51
bWJlcnMsIHNpbmNlIG5hbWVzCj4gPiBjYW4gYmUgY2hhbmdlZCBhbmQgbnVtYmVycyBjYW4ndC4K
PiA+IElzIGl0IG1heWJlIHBvc3NpYmxlIHRvIGRlZmluZSBib3RoIC9kZXYvdWJpYmxvY2slZF8l
ZCBhbmQKPiA+IC9kZXYvdWJpYmxvY2slZF8lcyBhdCB0aGUgc2FtZSB0aW1lPwo+ID4gSG93IHdv
dWxkIHRoaXMgYmUgZG9uZSB3aXRoIHVkZXYgaW5zdGVhZCB0byBnZXQgImZhbmN5IGJ5LWlkIj8K
Pgo+IFRoYW5rcyBmb3IgYnJpbmdpbmcgdGhpcyB0b3BpYyB1cCBhZ2Fpbi4KPiB1ZGV2IGFsbG93
cyBydWxlcyBhbmQgZXZlbiBoZWxwZXIgKHNjcmlwdHMpIHRvIGdhaW4gZGV2aWNlCj4gYXR0cmli
dXRlcy4gVGhlc2UgY2FuIHRoZW4gYmUgdXNlZCB0byBuYW1lL3N5bWxpbmsgZGV2aWNlcyBhcyB5
b3Ugd2FudC4KPgo+IEZvciBleGFtcGxlLCBpZiB5b3Ugd2FudCB0byBoYXZlIGRldmljZSBzeW1s
aW5rcyBieSBuYW1lIGZvciBVQkkKPiB2b2x1bWVzLCB5b3UgY2FuIGNyZWF0ZSBhIHJ1bGUgbGlr
ZSB0aGF0Ogo+IEtFUk5FTD09InViaT9fPyIsIElNUE9SVHtwcm9ncmFtfT0iL2V0Yy91ZGV2L3J1
bGVzLmQvdWJpX3Byb2JlCj4gJGRldm5vZGUiLCBTWU1MSU5LPSJ1YmklRXtNVERfTlVNfV8lRXtW
T0xfTkFNRX0iCj4KPiBXaXRoIHViaV9wcm9iZSBiZWluZzoKPiAjIS9iaW4vc2gKPiBWT0xfTkFN
RT0iJChjYXQgL3N5cy8ke0RFVlBBVEh9L25hbWUpIgo+IE1URF9OVU09IiQoY2F0IC9zeXMvJHtE
RVZQQVRIfS8uLi9tdGRfbnVtKSIKPiBlY2hvICJWT0xfTkFNRT0ke1ZPTF9OQU1FfSIKPiBlY2hv
ICJNVERfTlVNPSR7TVREX05VTX0iCj4KPiBJIHRvb2sgdGhlIGNoYW5jZSBhbmQgcmV2aWV3ZWQg
VUJJJ3Mgc3lzZnMgaW50ZXJmYWNlIGFuZCBmb3VuZCBhIGZldwo+IHRoaW5ncyB3aGljaCBuZWVk
Cj4gaW1wcm92ZW1lbnQuIFdpdGggdGhlc2UgaXNzdWVzIGFkZHJlc3NlZCB5b3UgY2FuIGFsc28g
d29yayB3aXRoCj4gdWJpYmxvY2sgYnkgbmFtZToKPiAxLiBVQkkgZG9lcyBub3QgZXhwb3J0IHRo
ZSBVQkkgZGV2aWNlIG51bWJlciB2aWEgc3lzZnMuIEluIDk5JSBvZiBhbGwKPiBjYXNlcyBtdGRf
bnVtIHdpbGwgYmUgY29ycmVjdCwKPiBidXQgeW91IGNhbiBzZWxlY3QgdGhlIFVCSSBudW1iZXIg
dXBvbiBhdHRhY2ggdGltZS4KPiAyLiBVQkkgZG9lcyBub3QgZW1pdCBhIGNoYW5nZSBrZXZlbnQg
d2hlbiBhbiB2b2x1bWUgaXMgcmVuYW1lZC4gU28KPiB1ZGV2IGRvZXMgbm90IHNlZSB0aGUgcmVu
YW1lIGNvbW1hbmQuCj4gMy4gdWJpYmxvY2sgZG9lcyBub3Qgc2V0IHRoZSBVQkkgdm9sdW1lIGFz
IHBhcmVudCBkZXZpY2UuCj4KPiBTbyB3ZSBjYW4gdGhlbiBoYXZlIGEgcnVsZSBsaWtlOgo+IEtF
Uk5FTD09InViaWJsb2NrP18/IiwKPiBJTVBPUlR7cHJvZ3JhbX09Ii9ldGMvdWRldi9ydWxlcy5k
L3ViaWJsb2NrX3Byb2JlICRkZXZub2RlIgo+IFNZTUxJTks9InViaWJsb2NrJG51bWJlcl8lRXtW
T0xfTkFNRX0iCj4KPiBXaXRoIHViaWJsb2NrX3Byb2JlIGJlaW5nOgo+ICMhL2Jpbi9zaAo+IFZP
TF9OQU1FPSIkKGNhdCAvc3lzLyR7REVWUEFUSH0vZGV2aWNlL25hbWUpIgo+IGVjaG8gIlZPTF9O
QU1FPSR7Vk9MX05BTUV9Igo+Cj4gIyBscyAtbHRyIC9kZXYvdWJpYmxvY2sqCj4gYnJ3LXJ3LS0t
LSAxIHJvb3QgZGlzayAyNTEsIDAgMTguIEF1ZyAyMjo0MSAvZGV2L3ViaWJsb2NrN18wCj4gbHJ3
eHJ3eHJ3eCAxIHJvb3Qgcm9vdCAgICAgMTEgMTguIEF1ZyAyMjo0MSAvZGV2L3ViaWJsb2NrMF90
ZXN0IC0+IHViaWJsb2NrN18wCj4gIyB1YmlyZW5hbWUgL2Rldi91Ymk3IHRlc3QgbGFsYQo+ICMg
bHMgLWx0ciAvZGV2L3ViaWJsb2NrKgo+IGJydy1ydy0tLS0gMSByb290IGRpc2sgMjUxLCAwIDE4
LiBBdWcgMjI6NDIgL2Rldi91YmlibG9jazdfMAo+IGxyd3hyd3hyd3ggMSByb290IHJvb3QgICAg
IDExIDE4LiBBdWcgMjI6NDIgL2Rldi91YmlibG9jazBfbGFsYSAtPiB1YmlibG9jazdfMAo+Cj4g
RG9lcyB0aGlzIGhlbHA/IElmIHlvdSBuZWVkIG90aGVyL21vcmUgc3lzZnMgY2hhbmdlcywgcGxl
YXNlIHRlbGwuIDotKQo+IEF0dGFjaGVkIHlvdSBjYW4gZmluZCBteSBXSVAgcGF0Y2ggZm9yIHRo
ZXNlIGNoYW5nZXMuIEkgbmVlZCB0byBkb3VibGUgY2hlY2sKPiBhIGZldyB0aGluZ3MgZmlyc3Qg
YmVmb3JlIEkgd2lsbCBzZW5kIGEgZm9ybWFsIHBhdGNoLgo+Cj4gSSB0aGluayBpdCB3b3VsZCBl
dmVuIG1ha2Ugc2Vuc2UgdG8gaW50ZWdyYXRlIGEgbW9yZSBwb3dlcmZ1bAo+IHViaV9wcm9iZSAo
YXMgQyBwcm9ncmFtKSBpbnRvIHN5c3RlbWQtdWRldgo+IGxpa2Ugd2UgYWxyZWFkeSBoYXZlIGZv
ciBtdGQgaXRzZWxmLgoKV2lsbCB0aGlzIHJlYWxseSB3b3JrIHdoZW4gcGFzc2luZyB0aGUgcm9v
dGZzIHRvIHRoZSBrZXJuZWwgY29tbWFuZApsaW5lIGxpa2UgInJvb3Q9L2Rldi91YmlibG9jazBf
cm9vdGZzIj8gSWYgdGhlIHVkZXYgcnVsZXMgdGhhdCBzZXQgdXAKdGhlIHN5bWJvbGljIGxpbmsg
L2Rldi91YmlibG9jazBfcm9vdGZzIGFyZSBzdG9yZWQgaW4gYSBmaWxlIG9uIHRoZQpyb290ZnMg
aXRzZWxmLCBJIGd1ZXNzIHRoYXQgc3ltbGluayBjYW4ndCBiZSBtYWRlIGF2YWlsYWJsZSBiZWZv
cmUgdGhlCnJvb3RmcyBpcyBtb3VudGVkLi4uCgovRW1pbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LW10ZC8K
