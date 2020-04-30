Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A131C029F
	for <lists+linux-mtd@lfdr.de>; Thu, 30 Apr 2020 18:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AwsZgEyX37XH7B5lM450RtU2zuJt4PB4/Fv/SWLoG0=; b=NIlxfo9/UXAdPL
	AODOsRrt3Eh6yNWKcck2PWLuPkd8O4Xk0BRX8sxelcmDgwO4Ug6FPec+e1zWiDMMTCg1F/KUilUj8
	EP5n33cvgDjPKcHkBCmsNr/TVKlcoZKvBofc6MSNAq9KCbr1KI9qL0uhC6cyPkM+OMJiUnCTYT1dK
	oIzcwcjqaMtg4pKiyFEYBuki7jqrMwjIe5CwsNnDUn/CQLsJcp26jDXBv4r44oNJotsmmOSQHIOHp
	vFvdbQzvhcjBAB4jsA387pj1CeZzJWfpO8GmlcQTqBPF2iGyeGdwqYRrCiLWZeCojC8zqzYlXHWS2
	U3lltiMBDQrKh+vpx5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC89-0007eG-FA; Thu, 30 Apr 2020 16:33:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC7F-0006x1-Vf; Thu, 30 Apr 2020 16:32:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F1DBA101E;
 Thu, 30 Apr 2020 09:32:48 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E4D2A3F68F;
 Thu, 30 Apr 2020 09:32:47 -0700 (PDT)
Date: Thu, 30 Apr 2020 17:32:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH] mtd: cfi_cmdset_0001: Support the absence of protection
 registers
Message-ID: <20200430163245.GK2717@gaia>
References: <20200417142325.2931423-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417142325.2931423-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_093250_111864_B717D227 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: vigneshr@ti.com, richard@nod.at, miquel.raynal@bootlin.com,
 linux-mtd@lists.infradead.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgMDQ6MjM6MjZQTSArMDIwMCwgSmVhbi1QaGlsaXBwZSBC
cnVja2VyIHdyb3RlOgo+IFRoZSBmbGFzaCBjb250cm9sbGVyIGltcGxlbWVudGVkIGJ5IHRoZSBB
cm0gQmFzZSBwbGF0Zm9ybSBiZWhhdmVzIGxpa2UKPiB0aGUgSW50ZWwgU3RyYXRhRmxhc2ggSjMg
ZGV2aWNlLCBidXQgb21pdHMgc2V2ZXJhbCBmZWF0dXJlcy4gSW4KPiBwYXJ0aWN1bGFyIGl0IGRv
ZXNuJ3QgaW1wbGVtZW50IGEgcHJvdGVjdGlvbiByZWdpc3Rlciwgc28gIk51bWJlciBvZgo+IFBy
b3RlY3Rpb24gcmVnaXN0ZXIgZmllbGRzIiBpbiB0aGUgUHJpbWFyeSBWZW5kb3ItU3BlY2lmaWMg
RXh0ZW5kZWQKPiBRdWVyeSwgaXMgMC4KPiAKPiBUaGUgSW50ZWwgU3RyYXRhRmxhc2ggSjMgZGF0
YXNoZWV0IG9ubHkgbGlzdHMgMSBhcyBhIHZhbGlkIHZhbHVlIGZvcgo+IE51bVByb3RlY3Rpb25G
aWVsZHMuIEl0IGRlc2NyaWJlcyB0aGUgZmllbGQgYXM6Cj4gCj4gCSJOdW1iZXIgb2YgUHJvdGVj
dGlvbiByZWdpc3RlciBmaWVsZHMgaW4gSkVERUMgSUQgc3BhY2UuCj4gCeKAnDAwaCzigJ0gaW5k
aWNhdGVzIHRoYXQgMjU2IHByb3RlY3Rpb24gYnl0ZXMgYXJlIGF2YWlsYWJsZSIKPiAKPiBXaGls
ZSBhIHZhbHVlIG9mIDAgbWF5IGFyZ3VhYmx5IG5vdCBiZSBhcmNoaXRlY3R1cmFsbHkgdmFsaWQs
IHRoZQo+IGRyaXZlcidzIGN1cnJlbnQgYmVoYXZpb3IgaXMgY2VydGFpbmx5IHdyb25nOiBpZiBO
dW1Qcm90ZWN0aW9uRmllbGRzIGlzCj4gMCwgcmVhZF9wcmlfaW50ZWxleHQoKSBhZGRzIGEgbmVn
YXRpdmUgdmFsdWUgdG8gdGhlIHVuc2lnbmVkIGV4dHJhX3NpemUsCj4gYW5kIGVuZHMgdXAgaW4g
YW4gaW5maW5pdGUgbG9vcC4KPiAKPiBGaXggaXQgYnkgaWdub3JpbmcgYSBOdW1Qcm90ZWN0aW9u
RmllbGRzIG9mIDAuCj4gCj4gU2lnbmVkLW9mZi1ieTogSmVhbi1QaGlsaXBwZSBCcnVja2VyIDxq
ZWFuLXBoaWxpcHBlQGxpbmFyby5vcmc+CgpJZiB5b3UgbmVlZCBhbm90aGVyIGNvbmZpcm1hdGlv
bjoKClRlc3RlZC1ieTogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eCBNVEQgZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tdGQvCg==
