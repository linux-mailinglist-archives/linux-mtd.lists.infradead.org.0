Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B94A48C575
	for <lists+linux-mtd@lfdr.de>; Wed, 14 Aug 2019 03:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U89kdQE4xNNnbIFIXnrBM8R2yogkb8KkoLxxPtx1hCI=; b=Htg1w7BkX3fUxJtjpA6/StkZ5
	vN83kB9XY+hrNwZdYKx3M8W/I3nc4yE0tUMCcquMkH+/nN7if+MCW6yXZEBJQ7It1bSZQkogfh8Ph
	nPj5HLu+p89O8xidkP/cIV4kLjNT/TeldtIo0Wtcj+7oL2y9IM9koYiDFxhVH1Xy8wxdoGswL3KYr
	2Gbor87y0EdPzYL7lMF5rtAkZZGAXqADTy7QQ+aQz8GW1UDrxr5fR1y6yKyLCdnNyPSm9u/3VZnX4
	NKvILDWJrbq4pGHdsVV+qL7J6j8092Zdehfs7Osl9RummaApASsjsNkEfZ6KRsHSK2msf/V1wWLU9
	qbQnsttbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxhpJ-00059C-8A; Wed, 14 Aug 2019 01:11:45 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxhp3-00058l-5m; Wed, 14 Aug 2019 01:11:30 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 18:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="181353934"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga006.jf.intel.com with ESMTP; 13 Aug 2019 18:11:28 -0700
Received: from [10.226.38.16] (unknown [10.226.38.16])
 by linux.intel.com (Postfix) with ESMTP id 7013A5800FE;
 Tue, 13 Aug 2019 18:11:27 -0700 (PDT)
Subject: Re: Regards-cadence-quadspi changes to be submitted as patch to
 upstream
To: Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-mtd-request@lists.infradead.org
References: <mailman.16568.1565684962.19300.linux-mtd@lists.infradead.org>
 <8bbd71ae-6c3a-6801-8902-ec4cab492d88@linux.intel.com>
 <49190c04-fda8-2fff-eb6f-6a67435d5205@microchip.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <97272d94-cc84-78dd-0abd-21f877af673e@linux.intel.com>
Date: Wed, 14 Aug 2019 09:11:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <49190c04-fda8-2fff-eb6f-6a67435d5205@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_181129_260159_078D7264 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

SGksIFR1ZG9yLAoKIMKgIFRoYW5rIHlvdSBzbyBtdWNoIGZvciB0aGUgcmVzcG9uc2UsIHN1cmUg
SSB3aWxsIGRvIHRoZSBzYW1lLgoKQmVzdCBSZWdhcmRzClZhZGl2ZWwKT24gMTMvOC8yMDE5IDY6
NDUgUE0sIFR1ZG9yLkFtYmFydXNAbWljcm9jaGlwLmNvbSB3cm90ZToKPiBUOiAgICAgIGdpdCBn
aXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbXRkL2xpbnV4Lmdp
dCBzcGktbm9yL25leHQKPgo+IFlvdSBjYW4gY2hlY2sgTUFJTlRBSU5FUlMgZmlsZSB3aGVuIGlu
IGRvdWJ0Lgo+Cj4gQ2hlZXJzLAo+IHRhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXggTVREIGRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbXRkLwo=
