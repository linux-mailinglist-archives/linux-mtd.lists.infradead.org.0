Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F241F7BB0
	for <lists+linux-mtd@lfdr.de>; Fri, 12 Jun 2020 18:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAlqlxJL3SMSlyPFE4nnk17Kf70YwRW6DWVzWlKrh/A=; b=s+dmX1jbJLUtsQ
	xI72+VW3Ya6nVjySm7wcuK0QBfDYoue2B+SfMvin6+9eCRzjESzgCjG8iX5SWlUAvNiaMqM1JksX+
	IYhcF9/zRmINPd7WysmHMCCGyJly9TMKHnVV7E1zAE2Au6ynbienHQGY28SB24cfP93xjuUf6RQtu
	AQLjMxBRzhqV1PuHkgKKeKHcy21geKuBErORQG/gBR2BWq47NLSMmMz7wl0BpzkJYKy4G/QydFeQ5
	Htx+YUOEGGMBaNKTtiAfh46mJFViojuu+YjNyE8eRdy6gH8Fhl8kvFOjHrADjusvVcExQHLrJio0H
	+2ytqSdfH2mXmUCR+Wpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjmde-0003TO-C4; Fri, 12 Jun 2020 16:34:42 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjmdX-0003Sv-7I
 for linux-mtd@lists.infradead.org; Fri, 12 Jun 2020 16:34:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id c8so10903822iob.6
 for <linux-mtd@lists.infradead.org>; Fri, 12 Jun 2020 09:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zGtrkPwQHWrCekYK5dUaegAtQMN8QZalOj8VmvHgaA4=;
 b=AT60cBBv3QR8xJsxBMrR/A4GpRqeznHdckKOSk0xmw1K1neMHnj2m16VPCQp/VANcC
 O/gHP6I3TPgj+ejrK0ySfOEOvziyF0zMlNrAmi84zx4I6buJRHr48yykQS3V9gVRa3B3
 xmk1y9RTZT97Or5/bNoLD6KB2aEYx5QKKUKVFAlkcyqD1bhjqUUTkpOm0hDf5NyUmFei
 gpH4ONWuxKPxxS/iu5MktOe3dOKWH2/VuD2JqwWr/Vh+JJBW/jxpZNOfM/n+IiKr2emV
 3t459QX0VGshbHNoFlV/dGz8fiwJLVa8a6GTC1fZLadFJtUtDccmvtJ5GzgTpU8YLp+4
 F25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zGtrkPwQHWrCekYK5dUaegAtQMN8QZalOj8VmvHgaA4=;
 b=VnZ62evaTN4o0N6k5zJ/8ccGrhkysoWUXAxj1pGd8VyQ1q5fjCfbp1R1UH2ceqwoUF
 Dyta9fwZZPKqyQVrkAUXMyEVJmYzUGiWjBxS4ymPw1I8W0cTXs8UuCXYTqjIka0X6ckf
 8YUimI2mWUdFFtsEsOBZMPpIb3YN/PqsEkZBRSHxhs95/U/Lg/+7Zm9T92vT/bH+ABOT
 DrINmiV9hyyeiLWIkrZZPC4npS1yVn30LKPTxVWLu1jk11jA2LuqGDJNw+AZlzM1iCzi
 eBrtKmEYEKly1+QhwcNUeMwjln7qf3fgHW5zehbJyVSPkMv0Lq+c8rkjmPTJE4KkVSff
 eKHg==
X-Gm-Message-State: AOAM5320azF6w336LFsWPwn6R0YuJJGVyCLJk+m/shD7TrSgDc1oQ5rp
 QKT8zghP/h69yxfR3w3pA0RzjiFAyQ9r6x5zrvk=
X-Google-Smtp-Source: ABdhPJyxpKZoQ9j7S5fMNo0YLbXNEkvp8Z6oUPQNqDRsiML6KXD8ePD8vcex091bLfNnSXVS5/cUq0kqmWt5t5828xI=
X-Received: by 2002:a05:6602:2e87:: with SMTP id
 m7mr14643455iow.203.1591979673042; 
 Fri, 12 Jun 2020 09:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200611054454.2547-1-kdasu.kdev@gmail.com>
 <20200611054454.2547-2-kdasu.kdev@gmail.com>
 <20200611092707.75da8c6a@xps13>
 <CAC=U0a3RXScu12LkU+hCv_5Lp_he92ExRFSgqLkwx40D6Xtrag@mail.gmail.com>
 <20200612090728.043b6baf@xps13>
In-Reply-To: <20200612090728.043b6baf@xps13>
From: Kamal Dasu <kdasu.kdev@gmail.com>
Date: Fri, 12 Jun 2020 12:34:22 -0400
Message-ID: <CAC=U0a1oLPs_=SgUTxYPxiW8JpQXOpz-RbL2KrgzDjutt1v0mQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] mtd: rawnand: brcmnand: Ecc error handling on EDU
 transfers
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_093435_264677_26DE7BEF 
X-CRM114-Status: GOOD (  35.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCBKdW4gMTIsIDIwMjAgYXQgMzowNyBBTSBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5
bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IEhpIEthbWFsLAo+Cj4gS2FtYWwgRGFzdSA8a2Rh
c3Uua2RldkBnbWFpbC5jb20+IHdyb3RlIG9uIFRodSwgMTEgSnVuIDIwMjAgMTI6MDQ6MjkKPiAt
MDQwMDoKPgo+ID4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMzoyNyBBTSBNaXF1ZWwgUmF5bmFs
IDxtaXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGkgS2FtYWws
Cj4gPiA+Cj4gPiA+IEthbWFsIERhc3UgPGtkYXN1LmtkZXZAZ21haWwuY29tPiB3cm90ZSBvbiBU
aHUsIDExIEp1biAyMDIwIDAxOjQ0OjU0Cj4gPiA+IC0wNDAwOgo+ID4gPgo+ID4gPiA+IEltcGxl
bWVudGVkIEVDQyBjb3JyZWN0YWJsZSBhbmQgdW5jb3JyZWN0YWJsZSBlcnJvciBoYW5kbGluZyBm
b3IgRURVCj4gPiA+Cj4gPiA+IEltcGxlbWVudD8KPiA+ID4KPiA+ID4gPiByZWFkcy4gSWYgRUND
IGNvcnJlY3RhYmxlIGJpdGZsaXBzIGFyZSBlbmNvdW50ZXJlZCAgb24gRURVIHRyYW5zZmVyLAo+
ID4gPgo+ID4gPiBleHRyYSBzcGFjZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXgo+ID4gPgo+ID4gPiA+IHJlYWQgcGFnZSBhZ2FpbiB1c2luZyBwaW8sIFRoaXMgaXMg
bmVlZGVkIGR1ZSB0byBhIGNvbnRyb2xsZXIgbG1pdGF0aW9uCj4gPiA+Cj4gPiA+IHMvcGlvL1BJ
Ty8KPiA+ID4KPiA+ID4gPiB3aGVyZSByZWFkIGFuZCBjb3JyZWN0ZWQgZGF0YSBpcyBub3QgdHJh
bnNmZXJyZWQgdG8gdGhlIERNQSBidWZmZXIgb24gRUNDCj4gPiA+ID4gZXJyb3JzLiBUaGlzIGhv
bGRzIHRydWUgZm9yIEVDQyBjb3JyZWN0YWJsZSBlcnJvcnMgYmV5b25kIHNldCB0aHJlc2hvbGQu
Cj4gPiA+Cj4gPiA+IGVycm9yLgo+ID4gPgo+ID4gPiBOb3Qgc3VyZSB3aGF0IHRoZSBsYXN0IHNl
bnRlbmNlIG1lYW5zPwo+ID4gPgo+ID4KPiA+IE5BTkQgY29udHJvbGxlciBhbGxvd3MgZm9yIHNl
dHRpbmcgYSBjb3JyZWN0YWJsZSAgRUNDIHRocmVzaG9sZCBudW1iZXIKPiA+IG9mIGJpdHMgYmV5
b25kIHdoaWNoIGl0IHdpbGwgYWN0dWFsbHkgcmVwb3J0IHRoZSBlcnJvciB0byB0aGUgZHJpdmVy
Lgo+ID4gZS5nLiBmb3IgQkNILTQgdGhlIHRocmVzaG9sZCBpcyAzLCBzbyAzLWJpdCBhbmQgNC1i
aXQgZXJyb3JzIHdpbGwKPiA+IGdlbmVyYXRlIGNvcnJlY3RhYmxlIEVDQyBpbnRlcnJ1cHQgaG93
ZXZlciAxLWJpdCBhbmQgMi1iaXQgZXJyb3JzIHdpbGwKPiA+IGJlIGNvcnJlY3RlZCBzaWxlbnRs
eS4KPiA+IEZyb20gdGhlIGFib3ZlIGV4YW1wbGUgRURVIGhhcmR3YXJlIHdpbGwgbm90IHRyYW5z
ZmVyIGNvcnJlY3RlZCBkYXRhCj4gPiB0byB0aGUgRE1BIGJ1ZmZlciBmb3IgMy1iaXQgYW5kIDQt
Yml0IGVycm9ycyB0aGF0IGdldCByZXBvcnRlZC4gU28KPiA+IG9uY2Ugd2UgZGV0ZWN0Cj4gPiB0
aGUgZXJyb3IgZHVpbmcgRURVIHdlIHJlYWQgdGhlIHBhZ2UgYWdhaW4gdXNpbmcgcGlvLgo+Cj4g
T2sgSSBzZWUgd2hhdCB5b3UgbWVhbiwgY2FuJ3QgeW91IGZha2UgdGhlIHRocmVzaG9sZCBpbnN0
ZWFkPyBUaGUgTkFORAo+IGNvbnRyb2xsZXIgaW4gTGludXggaXMgbm90IHN1cHBvc2VkIHRvIGhh
bmRsZSB0aGlzIHRocmVzaG9sZCwgdGhlIE5BTkQKPiBjb3JlIGlzIGluIGNoYXJnZS4gU28gd2hh
dCB0aGUgY29udHJvbGxlciBkcml2ZXIgc2hvdWxkIGRvIGlzIGp1c3Q6Cj4gaW5jcmVhc2UgdGhl
IG51bWJlciBvZiBiaXRmbGlwcyArIHJldHVybiB0aGUgbWF4aW11bSBudW1iZXIgb3IgYml0Zmxp
cAo+IG9yIGluY3JlYXNlIHRoZSBmYWlsdXJlIGNvdW50ZXIuIElzIHRoaXMgYWxyZWFkeSB0aGUg
Y2FzZT8KPgovKiB0aHJlc2hvbGQgPSBjZWlsKEJDSC1sZXZlbCAqIDAuNzUpICovCmJyY21uYW5k
X3dyX2NvcnJfdGhyZXNoKGhvc3QsIERJVl9ST1VORF9VUChjaGlwLT5lY2Muc3RyZW5ndGggKiAz
LCA0KSk7ClRoaXMgaG93IHRoZSB0aHJlc2hvbGQgaXMgc2V0LCBhbGwgaXQgbWVhbnMgaXMgdGhh
dCBmb3IgaGlnaCBCQ0gKbGV2ZWxzIGRvbid0IGludGVycnVwdCBvbiBsb3cgbnVtYmVyIChsZXNz
IHRoYW4gdGhyZXNob2xkKSBvZgpiaXRfZmxpcHMuIFllcyB0aGUgY29udHJvbGxlciBkcml2ZXIg
b25seSBpbmNyZW1lbnRzIGNvcnJlY3RhYmxlIEVDQwpjb3VudC4gQnV0IGR1ZSB0aGUgRURVIGRl
c2lnbiBhbiBFRFUgb3BlcmF0aW9uIGlzIGRpc3J1cHRlZCB3aGVuIHRoZQpjb250cm9sbGVyIGlu
dGVycnVwdHMgb24gY29ycmVjdGFibGUgRUNDIGVycm9ycyBkdXJpbmcgc3VicGFnZSBFQ0MKY2Fs
Y3VsYXRpb25zLiBIZW5jZSB0aGUgZHJpdmVyIG5lZWRzIHRvIHJlYWQgdGhlIHBhZ2UgYWdhaW4g
d2l0aCBQSU8KdG8gdHJhbnNmZXIgY29ycmVjdGVkIGRhdGEuCgo+ID4KPiA+ID4gPgo+ID4gPiA+
IEZpeGVzOiBhNWQ1M2FkMjZhOGIgKCJtdGQ6IHJhd25hbmQ6IGJyY21uYW5kOiBBZGQgc3VwcG9y
dCBmb3IgZmxhc2gtZWR1IGZvciBkbWEgdHJhbnNmZXJzIikKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBLYW1hbCBEYXN1IDxrZGFzdS5rZGV2QGdtYWlsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4KPiA+
ID4gTWlub3Igbml0cyBiZWxvdyA6KQo+ID4gPgo+ID4gPiA+ICBkcml2ZXJzL210ZC9uYW5kL3Jh
dy9icmNtbmFuZC9icmNtbmFuZC5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCj4gPiA+ID4KPiA+ID4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9yYXcvYnJjbW5hbmQvYnJjbW5hbmQuYyBiL2RyaXZl
cnMvbXRkL25hbmQvcmF3L2JyY21uYW5kL2JyY21uYW5kLmMKPiA+ID4gPiBpbmRleCAwYzFkNmU1
NDM1ODYuLmQ3ZGFhODNjOGE1OCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL210ZC9uYW5k
L3Jhdy9icmNtbmFuZC9icmNtbmFuZC5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9tdGQvbmFuZC9y
YXcvYnJjbW5hbmQvYnJjbW5hbmQuYwo+ID4gPiA+IEBAIC0xODU1LDYgKzE4NTUsMjIgQEAgc3Rh
dGljIGludCBicmNtbmFuZF9lZHVfdHJhbnMoc3RydWN0IGJyY21uYW5kX2hvc3QgKmhvc3QsIHU2
NCBhZGRyLCB1MzIgKmJ1ZiwKPiA+ID4gPiAgICAgICBlZHVfd3JpdGVsKGN0cmwsIEVEVV9TVE9Q
LCAwKTsgLyogZm9yY2Ugc3RvcCAqLwo+ID4gPiA+ICAgICAgIGVkdV9yZWFkbChjdHJsLCBFRFVf
U1RPUCk7Cj4gPiA+ID4KPiA+ID4gPiArICAgICBpZiAocmV0ID09IDAgJiYgZWR1X2NtZCA9PSBF
RFVfQ01EX1JFQUQpIHsKPiA+ID4KPiA+ID4gIXJldAo+ID4gPgo+ID4gPiA+ICsgICAgICAgICAg
ICAgdTY0IGVycl9hZGRyID0gMDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICAvKgo+
ID4gPiA+ICsgICAgICAgICAgICAgICogY2hlY2sgZm9yIGVjYyBlcnJvcnMgaGVyZSwgc3VicGFn
ZSBlY2MgZXJyb3MgYXJlCj4gPiA+ID4gKyAgICAgICAgICAgICAgKiByZXRhaW5lZCBpbiBlY2Mg
ZXJyb3IgYWRkciByZWdpc3Rlcgo+ID4gPgo+ID4gPiBzL2VjYy9FQ0MvCj4gPiA+IHMvZXJyb3Mv
ZXJyb3JzLwo+ID4gPiBzL2FkZHIvYWRkcmVzcy8KPiA+ID4KPiA+ID4gPiArICAgICAgICAgICAg
ICAqLwo+ID4gPiA+ICsgICAgICAgICAgICAgZXJyX2FkZHIgPSBicmNtbmFuZF9nZXRfdW5jb3Jy
ZWNjX2FkZHIoY3RybCk7Cj4gPiA+ID4gKyAgICAgICAgICAgICBpZiAoIWVycl9hZGRyKSB7Cj4g
PiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGVycl9hZGRyID0gYnJjbW5hbmRfZ2V0X2NvcnJl
Y2NfYWRkcihjdHJsKTsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKGVycl9hZGRy
KQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IC1FVUNMRUFOOwo+
ID4gPiA+ICsgICAgICAgICAgICAgfSBlbHNlCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHJldCA9IC1FQkFETVNHOwo+ID4gPgo+ID4gPiBJIGRvbid0IGxpa2UgdmVyeSBtdWNoIHRvIHNl
ZSB0aGVzZSB2YWx1ZXMgYmVpbmcgdXNlZCB3aXRoaW4gTkFORAo+ID4gPiBjb250cm9sbGVyIGRy
aXZlcnMgYnV0IEkgc2VlIGl0J3MgYWxyZWFkeSB0aGUgY2F1c2UsIHNvIEkgZ3Vlc3MgSSBjYW4K
Pgo+IHMvY2F1c2UvY2FzZS8KPgo+ID4gPiBsaXZlIHdpdGggdGhhdC4KPiA+ID4KPiA+ID4gPiAr
ICAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICAgICAgIHJldHVybiByZXQ7Cj4gPiA+ID4gIH0KPiA+
ID4gPgo+ID4gPiA+IEBAIC0yMDU4LDYgKzIwNzQsNyBAQCBzdGF0aWMgaW50IGJyY21uYW5kX3Jl
YWQoc3RydWN0IG10ZF9pbmZvICptdGQsIHN0cnVjdCBuYW5kX2NoaXAgKmNoaXAsCj4gPiA+ID4g
ICAgICAgdTY0IGVycl9hZGRyID0gMDsKPiA+ID4gPiAgICAgICBpbnQgZXJyOwo+ID4gPiA+ICAg
ICAgIGJvb2wgcmV0cnkgPSB0cnVlOwo+ID4gPiA+ICsgICAgIGJvb2wgZWR1X3JlYWQgPSBmYWxz
ZTsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIGRldl9kYmcoY3RybC0+ZGV2LCAicmVhZCAlbGx4IC0+
ICVwXG4iLCAodW5zaWduZWQgbG9uZyBsb25nKWFkZHIsIGJ1Zik7Cj4gPiA+ID4KPiA+ID4gPiBA
QCAtMjA3NSw2ICsyMDkyLDEwIEBAIHN0YXRpYyBpbnQgYnJjbW5hbmRfcmVhZChzdHJ1Y3QgbXRk
X2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hpcCAqY2hpcCwKPiA+ID4gPiAgICAgICAgICAgICAg
ICAgICAgICAgZWxzZQo+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biAtRUlPOwo+ID4gPiA+ICAgICAgICAgICAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAg
ICAgICAgIGlmIChoYXNfZWR1KGN0cmwpKQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBl
ZHVfcmVhZCA9IHRydWU7Cj4gPiA+Cj4gPiA+IFlvdSBkb24ndCBuZWVkIHRoaXMgZXh0cmEgdmFs
dWUsIHlvdSBhbHJlYWR5IGhhdmUgdGhlIGNtZCBwYXJhbWV0ZXIKPiA+ID4gd2hpY2ggdGVsbHMg
eW91IGlmIGl0IGlzIGEgcmVhZCBvciBhIHdyaXRlLiBZb3UgbWlnaHQgZXZlbiB3YW50IHRvCj4g
PiA+IGNyZWF0ZSBhIGlmIGJsb2NrIHNvIHNldCBkaXIgYW5kIGVkdV9jbWQgYW5kIGV2ZW50dWFs
bHkgYSBsb2NhbAo+ID4gPiBlZHVfcmVhZCBpZiB5b3UgdGhpbmsgaXQgc3RpbGwgbWFrZXMgc2Vu
c2UuCj4gPiA+Cj4gPgo+ID4gSSBuZWVkZWQgdGhlIHZhbHVlIHNpbmNlIGRtYSBhbmQgZWR1IHJl
YWQgaGFzIG11bHRpcGxlIGNvbmRpdGlvbnMgbGlrZQo+ID4gb29iIGlzIG5vdCBpbmNsdWRlZCwg
YnVmZmVyIGlzIGFsaWduZWQsIHZpcnR1YWwgYWRkcmVzcyBpcyBnb29kLiBUaGlzCj4gPiBpbmRp
Y2F0ZXMgdG8KPiA+IHRoZSBpZiAobXRkX2lzX2JpdGZsaXAoZXJyKSkgIGJsb2NrIHRoYXQgdGhl
IGVycm9yIHdhcyBmcm9tIGFuIGVkdQo+ID4gdHJhbnNhY3Rpb24gdGhhdCBoYXBwZW5lZC5UaGlz
IHdheSBhbGwgZWNjIGVycm9yIGhhbmRsaW5nIGZvciBkbWEsCj4gPiBlZHUsIHBpbyBpcyBpbiBv
bmUgcGxhY2UuCj4gPiBBbHNvIHRoZXJlIGlzIG1vcmUgY29udHJvbGxlciB2ZXJzaW9uIHNwZWNp
ZmljIGxvZ2ljIGZvciByZWFkIGVycm9yCj4gPiBoYW5kbGluZyBpbiB0aGVyZSBhbmQgdGhpcyBh
bGxvd3MgdXMgdG8gbWFpbnRhaW4gdGhlIGhpZXJhcmNoeSBob3cgd2UKPiA+IGhhbmRsZSBib3Ro
IGNvcnJlY3RhYmxlCj4gPiBhbmQgdW5jb3JyZWN0YWJsZSBlcnJvci4KPgo+IEZhaXIgZW5vdWdo
Lgo+Cj4gPgo+ID4gPiA+ICsKPiA+ID4gPiAgICAgICB9IGVsc2Ugewo+ID4gPiA+ICAgICAgICAg
ICAgICAgaWYgKG9vYikKPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgbWVtc2V0KG9vYiwg
MHg5OSwgbXRkLT5vb2JzaXplKTsKPiA+ID4gPiBAQCAtMjEyMiw2ICsyMTQzLDExIEBAIHN0YXRp
YyBpbnQgYnJjbW5hbmRfcmVhZChzdHJ1Y3QgbXRkX2luZm8gKm10ZCwgc3RydWN0IG5hbmRfY2hp
cCAqY2hpcCwKPiA+ID4gPiAgICAgICBpZiAobXRkX2lzX2JpdGZsaXAoZXJyKSkgewo+ID4gPiA+
ICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IGNvcnJlY3RlZCA9IGJyY21uYW5kX2NvdW50X2Nv
cnJlY3RlZChjdHJsKTsKPiA+ID4gPgo+ID4gPiA+ICsgICAgICAgICAgICAgLyogaW4gY2FzZSBv
ZiBlZHUgY29ycmVjdGFibGUgZXJyb3Igd2UgcmVhZCBhZ2FpbiB1c2luZyBwaW8gKi8KPiA+ID4K
PiA+ID4gcy9lZHUvRURVLyA/Cj4gPiA+IHMvcGlvL1BJTy8KPiA+ID4KPiA+ID4gPiArICAgICAg
ICAgICAgIGlmIChlZHVfcmVhZCkKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgZXJyID0g
YnJjbW5hbmRfcmVhZF9ieV9waW8obXRkLCBjaGlwLCBhZGRyLCB0cmFucywgYnVmLAo+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvb2IsICZl
cnJfYWRkcik7Cj4gPiA+ID4gKwo+ID4gPiA+ICAgICAgICAgICAgICAgZGV2X2RiZyhjdHJsLT5k
ZXYsICJjb3JyZWN0ZWQgZXJyb3IgYXQgMHglbGx4XG4iLAo+ID4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKWVycl9hZGRyKTsKPiA+ID4gPiAgICAgICAgICAg
ICAgIG10ZC0+ZWNjX3N0YXRzLmNvcnJlY3RlZCArPSBjb3JyZWN0ZWQ7Cj4gPiA+Cj4gPgo+ID4g
V2lsbCBmaXggYWxsIHRoZSBvdGhlciB0eXBvcy4KPiA+Cj4gPiA+IFRoYW5rcywKPiA+ID4gTWlx
dcOobAo+ID4KPiA+IFRoYW5rcwo+ID4gS2FtYWwKPgo+Cj4gVGhhbmtzLAo+IE1pcXXDqGwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
