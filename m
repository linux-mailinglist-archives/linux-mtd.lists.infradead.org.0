Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26C3181CD7
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 16:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYnxfHnxZk49byMjdhswncVxdRrPLd5g5kCWN3r2r/E=; b=joliSXTcoEZEUg
	yD82Sy5LX/HkEmEyPD4CqL7gDN6MaVDNCJJ2xlL5XRkH7693A3q6VEu5L6KaVP0Dyvv6E/4ULlQw6
	IrpV580yRPms5+Az9kcTAr8g/B0UujLFr/IP6la2s86yX/j/7fgd0CRPkhaab6lwAG93eM8Xa1hSQ
	IIbNWAwcQMfo8Wd/RphvlT25Lk9gIRIqlihZn2ZKw/ZrX6bJlf830WfpwHCHP7lO7Ksy0UFon/GZ5
	ml/6hrROCEVh3aAMze+PWimvEqEY9q0Hf01Psc2ZD6rLf5xdVYaJLJ1tvKj+LhUbxvh4ebx4GXW3u
	84f/TicQ0UqvqS09YUxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3cD-0007z0-Mw; Wed, 11 Mar 2020 15:49:49 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3c4-0007xC-Tl
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 15:49:42 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 502E640008;
 Wed, 11 Mar 2020 15:49:33 +0000 (UTC)
Date: Wed, 11 Mar 2020 16:49:32 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: shiva.linuxworks@gmail.com
Subject: Re: [PATCH v6 0/6] Add new series Micron SPI NAND devices
Message-ID: <20200311164932.23cc7a42@xps13>
In-Reply-To: <20200309115230.7207-1-sshivamurthy@micron.com>
References: <20200309115230.7207-1-sshivamurthy@micron.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_084941_097915_C723DBD2 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, Frieder Schrempf <frieder.schrempf@kontron.de>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Shivamurthy Shastri <sshivamurthy@micron.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGkgU2hpdmEsCgpzaGl2YS5saW51eHdvcmtzQGdtYWlsLmNvbSB3cm90ZSBvbiBNb24sICA5IE1h
ciAyMDIwIDEyOjUyOjI0ICswMTAwOgoKPiBGcm9tOiBTaGl2YW11cnRoeSBTaGFzdHJpIDxzc2hp
dmFtdXJ0aHlAbWljcm9uLmNvbT4KPiAKPiBUaGlzIHBhdGNoc2V0IGlzIGZvciB0aGUgbmV3IHNl
cmllcyBvZiBNaWNyb24gU1BJIE5BTkQgZGV2aWNlcywgYW5kIHRoZQo+IGZvbGxvd2luZyBsaW5r
cyBhcmUgdGhlaXIgZGF0YXNoZWV0cy4KPiAKPiBNNzhBOgo+IFsxXSBodHRwczovL3d3dy5taWNy
b24uY29tL34vbWVkaWEvZG9jdW1lbnRzL3Byb2R1Y3RzL2RhdGEtc2hlZXQvbmFuZC1mbGFzaC83
MC1zZXJpZXMvbTc4YV8xZ2JfM3ZfbmFuZF9zcGkucGRmCj4gWzJdIGh0dHBzOi8vd3d3Lm1pY3Jv
bi5jb20vfi9tZWRpYS9kb2N1bWVudHMvcHJvZHVjdHMvZGF0YS1zaGVldC9uYW5kLWZsYXNoLzcw
LXNlcmllcy9tNzhhXzFnYl8xXzh2X25hbmRfc3BpLnBkZgo+IAo+IE03OUE6Cj4gWzNdIGh0dHBz
Oi8vd3d3Lm1pY3Jvbi5jb20vfi9tZWRpYS9kb2N1bWVudHMvcHJvZHVjdHMvZGF0YS1zaGVldC9u
YW5kLWZsYXNoLzcwLXNlcmllcy9tNzlhXzJnYl8xXzh2X25hbmRfc3BpLnBkZgo+IFs0XSBodHRw
czovL3d3dy5taWNyb24uY29tL34vbWVkaWEvZG9jdW1lbnRzL3Byb2R1Y3RzL2RhdGEtc2hlZXQv
bmFuZC1mbGFzaC83MC1zZXJpZXMvbTc5YV9kZHBfNGdiXzN2X25hbmRfc3BpLnBkZgo+IAo+IE03
MEE6Cj4gWzVdIGh0dHBzOi8vd3d3Lm1pY3Jvbi5jb20vfi9tZWRpYS9kb2N1bWVudHMvcHJvZHVj
dHMvZGF0YS1zaGVldC9uYW5kLWZsYXNoLzcwLXNlcmllcy9tNzBhXzRnYl8zdl9uYW5kX3NwaS5w
ZGYKPiBbNl0gaHR0cHM6Ly93d3cubWljcm9uLmNvbS9+L21lZGlhL2RvY3VtZW50cy9wcm9kdWN0
cy9kYXRhLXNoZWV0L25hbmQtZmxhc2gvNzAtc2VyaWVzL203MGFfNGdiXzFfOHZfbmFuZF9zcGku
cGRmCj4gWzddIGh0dHBzOi8vd3d3Lm1pY3Jvbi5jb20vfi9tZWRpYS9kb2N1bWVudHMvcHJvZHVj
dHMvZGF0YS1zaGVldC9uYW5kLWZsYXNoLzcwLXNlcmllcy9tNzBhX2RkcF84Z2JfM3ZfbmFuZF9z
cGkucGRmCj4gWzhdIGh0dHBzOi8vd3d3Lm1pY3Jvbi5jb20vfi9tZWRpYS9kb2N1bWVudHMvcHJv
ZHVjdHMvZGF0YS1zaGVldC9uYW5kLWZsYXNoLzcwLXNlcmllcy9tNzBhX2RkcF84Z2JfMV84dl9u
YW5kX3NwaS5wZGYKPiAKPiBDaGFuZ2VzIHNpbmNlIHY1Ogo+IC0tLS0tLS0tLS0tLS0tLS0tCj4g
Cj4gMS4gUmViYXNlZCBzZXJpZXMgdG8gdjUuNi1yYzEuCgpJIGFtIHZlcnkgc29ycnkgYnV0IGFj
dHVhbGx5IEkgaGFkIGlzc3VlcyBhcHBseWluZyBhbGwgeW91ciBwYXRjaGVzIG5vdApiZWNhdXNl
IHRoZXkgd2VyZSBub3QgYmFzZWQgb24gdjUuNi1yYzEsIGJ1dCBiZWNhdXNlIHNpbmNlIHRoZW4g
SQphcHBsaWVkIGEgcGF0Y2ggY2hhbmdpbmcgdGhlIGRldGVjdGlvbiB0aGF0IGNoYW5nZWQgdGhl
IGNvbnRlbnQgb2YgYQpsb3Qgb2Ygc3RydWN0dXJlcyAoaW5jbHVkaW5nIGluIE1pY3JvbidzIHBh
dGNoZXMpLgoKQ2FuIHlvdSBwbGVhc2UgcmViYXNlIGFnYWluIG9uIHRvcCBvZiB0aGUgY3VycmVu
dCBuYW5kL25leHQ/IEkgYW0gdmVyeQpzb3JyeSBmb3IgdGhpcyBleHRyYSB3b3JrLCB0aGlzIGlz
IG15IG1pc3Rha2UuCgpIZWFkIHNob3VsZCBiZToKCglhNWQ1M2FkMjZhOGIgKCJtdGQ6IHJhd25h
bmQ6IGJyY21uYW5kOiBBZGQgc3VwcG9ydCBmb3IgZmxhc2gtZWR1IGZvciBkbWEgdHJhbnNmZXJz
IikKCkFuZCB0aGUgY3VscHJpdCBjb21taXQgaXM6CgoJZjE1NDE3NzNhZjQ5ICgibXRkOiBzcGlu
YW5kOiByZXdvcmsgZGV0ZWN0IHByb2NlZHVyZSBmb3IgZGlmZmVyZW50IFJFQURfSUQgb3BlcmF0
aW9uIikKClRoYW5rcywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4IE1URCBkaXNjdXNzaW9uIG1haWxpbmcgbGlzdApo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW10ZC8K
