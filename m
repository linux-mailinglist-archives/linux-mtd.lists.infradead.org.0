Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C0114A6EF
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Jan 2020 16:08:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYCw67L5itR52HRjFI2tlpjqHbQcXBdd9jo9oaLdaFg=; b=nRlkmbVZ6yg5Mi
	CoOAfeg0f0U0xpvGX1yxpEL54oT7LMpLWB9E1OoIo/x2AYJEeOElnmZlooF+vQIiMeNl1SPXZc0e6
	WRdSA4Wou2WFX9JRn8qd6VZt0Zs8rHUXC6668Y34Sz2EQJz9fK6nG+spt+MUSWArELVlKCOTvilxR
	mLiDN+SVrXakfFaIFXzAxcz7nddZsEKpLbNqJxL2Zths3z68JcVTUgvhwDt0GGxUND7X6EQVEmaMj
	fi1dK870k/LHgRGYm90KxPfOd5UExLdvIpwpolJG2s+fwGtpBGk5QOfOLGkKAPKgFEQqzvIpt6CWf
	ML4l652O1GVC0PWhRexw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw60G-0001AX-9U; Mon, 27 Jan 2020 15:08:40 +0000
Received: from mail-vk1-xa2c.google.com ([2607:f8b0:4864:20::a2c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw607-00019h-CN
 for linux-mtd@lists.infradead.org; Mon, 27 Jan 2020 15:08:33 +0000
Received: by mail-vk1-xa2c.google.com with SMTP id m195so1452671vkh.10
 for <linux-mtd@lists.infradead.org>; Mon, 27 Jan 2020 07:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=soccasys-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=41ojCr9EwsXvCMEoibRpVv7YYj4pDfBtKGzHFnP+gnE=;
 b=uCO5xWWeCVwlgCmYm9ZdbWl3SfhsbcUilQz84sGcM+eqnxCmVnv9K16B+hlG36CAfw
 SKzh5UG/O1cTrPFFjhi7aq47gTtJeZfXt58tLJPuvztn5pDZo3rhdvK1rUooyqjHakMl
 aK4qQrnH03ABH7hBrRAwirCxdTB3E7ANE7yEl5+5R26Xbp7wo2z+Zh19Kto+EnG5CBxv
 5k0P4q1jMQUSHtIpd9qdhxY3VlxAliFdRfcWdKIw/b7W4hW3DkfeFIQm22kSrFpuHctl
 WaD+hRxEcFhRB0NfP0RcuJfOhdLi5YT9aetlLd2k9Z1kU5X3H6J1pUcHR0dLm0OQYQ/2
 YnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=41ojCr9EwsXvCMEoibRpVv7YYj4pDfBtKGzHFnP+gnE=;
 b=Uk7qv3NBXJr/E6BBqcQF2LZYCuJJRTpNTqsfmMgWoJ5FOxxFEb+hnt/m2TVtWNNHH+
 rmjeY3hhBdJMgsvlSEWdOXEu6fdvVHaf9dCRZQUeD8IXnsPhipsKRrU6VtEGGEyldELi
 Zw84yxflSflyyojJ+tA0t5fKIQLKf1ujysoDciLTWm3Vx0TyWVGP1b5VuH9LK0/5MTSC
 TIfaMR7ZX7to9cZgLCeNVjzIrtQaOSsanLTtYxJytousdZQ9OlZrNLutvLt3MeRfWwHk
 90jEfToRExAVl4mVy2ei6I/9I9bTz2Inxi9n2cHLROcYoDO5jTBxPTrn8/OM/n5ee7Zr
 9M6A==
X-Gm-Message-State: APjAAAXjSr9bcblMom1S+vZbYCPOdVLxcL18iepivEpaWrOSs3Y+vTZr
 8pEYowcj+ntQAtpT7aw07fOpJ+cbdm8v9kVj61oRpw==
X-Google-Smtp-Source: APXvYqwCoL2UHIWOx2gMiic2cO/mp3BdsZaqvuFrMN5un4KaL7AplGYhsSZiAjZba7B1o1/8BbYrxcPq0qJ+Ef/4+dY=
X-Received: by 2002:ac5:c64c:: with SMTP id j12mr10227207vkl.11.1580137708100; 
 Mon, 27 Jan 2020 07:08:28 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz>
In-Reply-To: <20200127120638.2jpgvedxecwgwz6u@qschulz>
From: Laurent Gauthier <laurent.gauthier@soccasys.com>
Date: Mon, 27 Jan 2020 16:04:40 +0100
Message-ID: <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_070831_557081_B1E901D2 
X-CRM114-Status: GOOD (  27.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a2c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Yocto discussion list <yocto@yoctoproject.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Andy Pont <andy.pont@sdcsystems.com>, JH <jupiter.hce@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgSkgsCgpBcyB5b3UgYXJlIG5vdCBwcm92aWRpbmcgZW5vdWdoIGRldGFpbHMgaW4geW91ciBy
ZXF1ZXN0IHdlIGhhdmUgdG8KZ3Vlc3MgdGhlIG5hdHVyZSBvZgp0aGUgaXNzdWUgeW91IGFyZSBz
ZWVpbmcuCgpJIHdpbGwganVzdCBwb2ludCBvdXQgYSBmZXcgdGhpbmdzIHRoYXQgY291bGQgaGVs
cCBpbiB5b3VyIHNpdHVhdGlvbi4KCklmIHRoaXMgaXMgYSBmYWlsdXJlIHRoYXQgaGFwcGVucyBh
bG1vc3QgZXZlcnkgdGltZSBhZnRlciB5b3UgZmxhc2ggYQpuZXcgaW1hZ2UgaXQgY291bGQgYmUK
ZHVlIHRvIE5BTkQgYmxvY2tzIGJlaW5nIGJhZC4KCkFzIHlvdSBtZW50aW9uZWQgdGhhdCB5b3Ug
aGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCB0aGlzIHN5c3RlbSBmb3IgYQp5ZWFyIGl0IGNvdWxkIGJl
IHRoYXQgcmVwZWF0ZWQKZmxhc2hpbmcgb2YgVUJJIGltYWdlcyBoYXMgZW5kZWQgdXAgY2F1c2lu
ZyBzb21lIE5BTkQgYmxvY2tzIHRvIGdvIGJhZC4KCldoZW4gdXNpbmcgVUJJIGl0IGlzIGEgZ29v
ZCBpZGVhIHRvIHVzZSBhIGZsYXNoaW5nIHByb2NlZHVyZSB0aGF0IHdpbGwKcHJlc2VydmUgVUJJ
IHdlYXItbGV2ZWxsaW5nCmluZm9ybWF0aW9uLiBBbiBleGFtcGxlIG9mIHN1Y2ggYSBwcm9jZWR1
cmUgY2FuIGJlIGZvdW5kIGluIHNlY3Rpb24KNC40IG9mIHRoZSBmb2xsb3dpbmcgcGFnZToKCmh0
dHA6Ly92YXJpd2lraS5jb20vaW5kZXgucGhwP3RpdGxlPVUtQm9vdF9mZWF0dXJlcyNGbGFzaGlu
Z19VQklGU190b19OQU5ECgpUaGVzZSBpbnN0cnVjdGlvbnMgKHViaSBwYXJ0L3ViaSByZW1vdmUv
dWJpIGNyZWF0ZS91Ymkgd3JpdGUpIG5lZWQgdG8KYmUgYWRqdXN0ZWQgZm9yIHlvdXIgc3BlY2lm
aWMKaGFyZHdhcmUgbGF5b3V0LCBidXQgdGhpcyBjYW4gaGVscC4gSW4gc2hvcnQgeW91IHNob3Vs
ZCB1cGRhdGUKaW5kaXZpZHVhbCBVQklGUyB2b2x1bWVzIGluIHlvdXIgVUJJCnBhcnRpdGlvbiBy
YXRoZXIgdGhlbiByZWZsYXNoIHRoZSB3aG9sZSBVQkkgcGFydGl0aW9uLgoKQW5vdGhlciBvcHRp
b24gaXMgdG8gdXNlIHViaWZvcm1hdCBmcm9tIHRoZSB1LWJvb3QgY29tbWFuZCBsaW5lLiBGb3IK
dGhpcyB5b3Ugd291bGQgbmVlZCB0byByZXNlYXJjaAp0aGUgc3ViamVjdCBieSB5b3Vyc2VsZi4K
ClVwZGF0aW5nIHlvdXIgVUJJRlMgdm9sdW1lcyB0aGlzIHdheSB5b3Ugc2hvdWxkIGJlIGFibGUg
dG8gZXh0ZW5kCmdyZWF0bHkgdGhlIGxpZmUgb2YgeW91ciBOQU5EIGlmCnlvdSBhcmUgZmxhc2hp
bmcgeW91ciBkZXZlbG9wbWVudCBib2FyZCBtdWx0aXBsZSB0aW1lcyBhIGRheS4KCkkgd291bGQg
bGlrZSB0byBhbHNvIGNvbW1lbnQgb24gYSByZW1hcmsgbWFkZSBieSBzb21lb25lIGVsc2UgYWJv
dXQKVUJJRlMgYmVpbmcgc2FmZSBhY3Jvc3MKcG93ZXIgY3ljbGVzOgoKV2hpbGUgdGhlIGFzc2Vy
dGlvbiB0aGF0ICJVQklGUyBpcyBzYWZlIGFjcm9zcyBwb3dlci1jeWNsZXMiIGlzIHRydWUKaW4g
dGhlb3J5IGluIHByYWN0aWNlIHlvdSBwcm9iYWJseQpzaG91bGQgYXZvaWQgdG8gcmVseSBvbiBp
dCB0b28gbXVjaC4KCk15IHJlY29tbWVuZGF0aW9ucyB0byBpbXByb3ZlIHJlc2lzdGFuY2UgdG8g
cG93ZXItY3ljbGVzIHdvdWxkIGJlIHRoZSBmb2xsb3dpbmc6CgoxLiBJZiBwb3NzaWJsZSBtb3Vu
dCB5b3VyIFVCSUZTIHJvb3QtZmlsZXN5c3RlbSBhcyByZWFkLW9ubHksIGFuZCB3aWxsCmF2b2lk
IG1vc3QgaXNzdWVzLiBUaGlzIG1lYW5zCiAgIHlvdSBzaG91bGQgdXNlIHRtcGZzIGZvciB0ZW1w
b3Jhcnkvdm9sYXRpbGUgZmlsZXN5c3RlbXMuCjIuIElmIHlvdXIgcm9vdC1maWxlc3lzdGVtIGNh
bm5vdCBiZSByZWFkLW9ubHkgdGhlbiByZW1vdW50IGl0IGFzCnJlYWQtb25seSBqdXN0IGJlZm9y
ZSB0aGUgZmluYWwgc2h1dGRvd24KICAgKHVzaW5nIGZvciBleGFtcGxlICJtb3VudCAtbyByZW1v
dW50LHJvIC8iIGZvbGxvd2VkIGJ5IGEgInN5bmMiKSBhcwp0aGlzIHdpbGwgbGltaXQgdGhlIHBv
c3NpYmlsaXR5IG9mIGEKICAgY29ycnVwdGlvbiBvZiB0aGUgVUJJRlMgb2NjdXJyaW5nIG9uIHRo
ZSBuZXh0IHJlYm9vdC4KCkkgaG9wZSB0aGF0IHlvdSB3aWxsIGZpbmQgd2hhdCB5b3VyIGlzc3Vl
IGlzLgoKS2luZCBSZWdhcmRzLCBMYXVyZW50LgoKT24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTo1
MyBQTSBRdWVudGluIFNjaHVsego8cXVlbnRpbi5zY2h1bHpAc3RyZWFtdW5saW1pdGVkLmNvbT4g
d3JvdGU6Cj4KPiBIaSBKSCwKPgo+IE9uIE1vbiwgSmFuIDI3LCAyMDIwIGF0IDEwOjEzOjM3UE0g
KzExMDAsIEpIIHdyb3RlOgo+ID4gSGkgQW5keSwKPiA+Cj4gPiBUaGFua3MgZm9yIHRoZSByZXNw
b25zZS4KPiA+Cj4gPiBPbiAxLzI3LzIwLCBBbmR5IFBvbnQgPGFuZHkucG9udEBzZGNzeXN0ZW1z
LmNvbT4gd3JvdGU6Cj4gPiA+IEpIIHdyb3RlLi4uCj4gPiA+Cj4gPiA+PlRoYXQgdGhlIHNhbWUg
cHJvYmxlbSBvZiBtaXNzaW5nIGJ1c3lib3ggd2FzIG5vdCBqdXN0IG9jY3VycmVkIGR1cmluZwo+
ID4gPj50aGUgZGV2aWNlIHJ1bm5pbmcgaW4gdGhlIG1pZGRsZSBvZiBvcGVyYXRpb24sIGl0IHdh
cyBhbHNvIG9jY3VycmVkCj4gPiA+PmR1cmluZyBib290aW5nIGltYWdlIGZyb20gTkFORCwgSSBz
YXcgc2V2ZXJhbCB0aW1lcyB0aGF0IHRoZSBmaXJzdCBhbmQKPiA+ID4+c2Vjb25kIGN5Y2xlcyBv
ZiBib290aW5nIGltYWdlIGZyb20gTkFORCB3ZXJlIHdvcmtpbmcgd2VsbCwgdGhlbiBzb21lCj4g
PiA+PmZvbGxvd2luZyBib290aW5nIHByb2Nlc3Mgd291bGQgYmUgY3Jhc2hlZCBieSBtaXNzaW5n
IGJ1c3lib3gsIHRoZW4KPiA+ID4+Y291bGQgbm90IHJ1biB3aG9sZSBzaGVsbCBjb21tYW5kcy4g
SSBoYXZlIGJlZW4gcG9uZGVyaW5nIGlmIGl0IGNvdWxkCj4gPiA+PmJlIGNhdXNlZCBieSBOQU5E
IGlzc3VlIG9yIG5ldHdvcmsgdmlydXMgLyBmaXNoeT8gQXBwcmVjaWF0ZSBhbnkKPiA+ID4+Y2x1
ZXMuCj4gPiA+IFRoZSBmaXJzdCBzdGVwIGlzIGZvciB1cyB0byB1bmRlcnN0YW5kIHdoYXQg4oCc
bWlzc2luZ+KAnSBtZWFucz8gIEhhdmUgeW91Cj4gPiA+IGdvdCBhbnkgbWVjaGFuaXNtIChVLUJv
b3QsIFNEIGNhcmQgYm9vdCwgZXRjLikgdGhhdCB3aWxsIGFsbG93IHlvdSB0bwo+ID4gPiBtb3Vu
dCBhbmQgbG9vayBhdCB0aGUgY29udGVudHMgb2YgdGhlIE5BTkQgZmlsZSBzeXN0ZW0/Cj4gPgo+
ID4gTWVhbnMgdGhhdCBidXN5Ym94IHdhcyBub3QgdGhlcmUgYW55bW9yZSwgaXQgbXlzdGVyaW91
c2x5IGxvc3QsIGFsbAo+ID4gc2hlbGwgY29tbWFuZHMgd291bGQgbm8gbG9uZ2VyIGF2YWlsYWJs
ZS4gSXQgY2Fubm90IHRvIHJ1biBtb3VudCBvcgo+ID4gYW55IHNoZWxsIGNvbW1hbmRzLiBUaGVy
ZSB3YXMgdHdvIHNjZW5hcmlvcyB3aGVuIHRoYXQgaGFwcGVuZWQ6Cj4gPgo+ID4gLSBJbiB0aGUg
bWlkZGxlIG9mIHJ1bm5pbmcsIHRoZSBkZXZpY2UgYWxsIG9mIGNlcnRhaW4gY291bGQgbm90IHJ1
bgo+ID4gc2hlbGwgY29tbWFuZHMgYW5kIGZhaWxlZCBteXN0ZXJpb3VzbHkKPiA+Cj4gPiAtIER1
cmluZyB0aGUgdS1ib290IGJvb3Rpbmcga2VybmVsIHByb2Nlc3MsIHRoZXJlIHdlcmUgZnVsbCBl
cnJvcnMgb2YKPiA+IGZhaWxpbmcgc2hlbGwgY29tbWFuZHMuIExldCBtZSBtYWtlIGl0IGNsZWFy
LCAgdGhhdCBib290aW5nIGVycm9yIGRpZAo+ID4gbm90IG9jY3VyIGluIHRoZSBmaXJzdCBvciBz
ZWNvbmQga2VybmVsIGJvb3RpbmcgYWZ0ZXIgdGhlIG5ldyBpbWFnZQo+ID4gaW5zdGFsbGF0aW9u
LCBpdCBoYXBwZW5lZCBpbiB0aGUgZm9sbG93aW5nIGtlcm5lbCBib290aW5nLCBidXQgdGhlcmUK
PiA+IHdhcyBub3RoaW5nIHRvIGRlbGV0ZSBidXN5Ym94IGFjY2lkZW50YWxseSwgYnVzeWJveCB3
YXMganVzdAo+ID4gbXlzdGVyaW91c2x5IGRpc2FwcGVhcmVkLiBCZWNhdXNlIEkgY291bGQgbm90
IHJ1biBscywgSSBkaWQgbm90IGtub3cKPiA+IGlmIHRoZXJlIGFyZSBvdGhlciB0aGluZ3MgbWlz
c2luZy4gSWYgeW91IGFzayBob3cgSSBjb3VsZCBrbm93IHRoZQo+ID4gYnVzeWJveCB3YXMgbWlz
c2luZywgSSByYW4gdGhlIHpJbWFnZS1pbml0cmFtZnMgdG8gYm9vdCB0aGUgbGludXggaW4KPiA+
IFJBTSwgdGhlbiBtb3VudCB0aGUgdWJpMCB0byBmaW5kICBvdXQgYnVzeWJveCB3YXMgZ29uZS4K
PiA+Cj4gPgo+ID4gPiBJZiB5b3UgbG9vayBhdCB0aGUgL2JpbiBkaXJlY3RvcnkgKGxzIC1sYSAv
YmluL2J1c3kqKSB3aGF0IGRvIHlvdSBzZWU/Cj4gPiA+IEhhdmUgdGhlIGZpbGVzIGJlZW4gZGVs
ZXRlZD8gVHJ1bmNhdGVkPyBaZXJvIGxlbmd0aD8KPiA+Cj4gPiBDb3VsZCBub3QgcnVuIGxzIG9y
IGFueSBzaGVsbCBjb21tYW5kcyB3aGVuIHRoZSBidXN5Ym94IHdhcyBtaXNzaW5nLgo+ID4KPgo+
IC9iaW4vbHMgLWxhIC9iaW4vYnVzeSogPwo+Cj4gTWF5YmUgc29tZXRoaW5nIGlzIG1lc3Npbmcg
d2l0aCB0aGUgUEFUSCBlbnZpcm9ubWVudCB2YXJpYWJsZS4gT3IKPiBzb21ldGhpbmcgaXMgcmVt
b3ZpbmcgdGhlIHN5bWxpbmtzIGZyb20gc29tZSBiaW5hcmllcyB0byBidXN5Ym94Lgo+Cj4gPiA+
IFdoYXQgZmlsZSBzeXN0ZW0gYXJlIHlvdSB1c2luZyBvbiB0aGUgTkFORCBmbGFzaD8gIEhvdyBh
cmUgdGhlIGRldmljZXMKPiA+ID4gYmVpbmcgcmVzZXQgZHVyaW5nIHRoZSB2YXJpb3VzIGJvb3Qg
Y3ljbGVzPyAgSWYgaXQgaXMgYSBoYXJkd2FyZSByZXNldAo+ID4gPiB0aGVuIHNvbWUgZmlsZSBz
eXN0ZW1zIGFyZSBsZXNzIHJlc2lsaWVudCB0byBpdCB0aGFuIG90aGVycyBidXQgSSB3b3VsZAo+
ID4gPiBleHBlY3QgaW4gdGhhdCBjYXNlIG1vcmUgZnVuZGFtZW50YWwgYm9vdCBpc3N1ZXMuCj4g
Pgo+ID4gVUJJRlMsIG1vc3QgZGV2aWNlIHJlc2V0IG9yIGJvb3QgY3ljbGVzIHdlcmUgY2FsbGlu
ZyBoYWx0IG9yIHJlYm9vdCwKPiA+IGJ1dCBpdCBzb21ldGltZSBpdCBjb3VsZCBqdXN0IHVzZSBw
b3dlciBjeWNsZS4KPiA+Cj4KPiBJSVJDLCBVQklGUyBpcyBzYWZlIGZyb20gcG93ZXIgY3ljbGVz
Lgo+Cj4gUXVlbnRpbgo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tCj4gTGlua3M6IFlvdSByZWNl
aXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuCj4KPiBWaWV3L1JlcGx5IE9ubGlu
ZSAoIzQ4MTYxKTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2Fn
ZS80ODE2MQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L210LzcwMTI4MjQ1LzM2MTgzNTQKPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZwo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvZy95b2N0by91bnN1YiAgW2xhdXJlbnQuZ2F1dGhpZXJAc29jY2FzeXMuY29tXQo+IC09LT0t
PS09LT0tPS09LT0tPS09LT0tCgoKCi0tIApMYXVyZW50IEdhdXRoaWVyClBob25lOiArMzMgNjMw
IDQ4MyA0MjkKaHR0cDovL3NvY2Nhc3lzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcg
bGlzdApodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10
ZC8K
