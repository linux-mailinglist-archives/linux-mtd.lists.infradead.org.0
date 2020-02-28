Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE12D1730E8
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 07:16:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WFkuB/T3Uw2NEW7ScmPbb7NpEVh3zl2jDEbi3N7ftH4=; b=XzFJaqTmvctEAJfbHlLj5dluO
	X0XNXILlTiV5u1FMZpP4f3Z9tXmAMR6p2IR0P+7ttLFQ/K+BWN0DKIk8kOCBFZrErC7kUMb8yZGUb
	te7LR5IL1n5GNkDU2spj8tKZYcx06xIfhAmllOejrx/rf3JN9qs/z9gdBDHsp+hzF/bHAo+3vWXRz
	w7AAL7bEt17b3W3NFxx2dNu3e9cVxGLt+z3i6d22rX+NrnUDTUP8li5GomSyd5llyRgPYi9xwk5lx
	3QgoQER3LhZsgL+UQTlPYTS/4krcmMxMzuZFQ56vKSUPm2SXdwGBjv/nf3+iah3roOM8odlflRgRq
	m8r9CDvhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ywd-0002hy-J1; Fri, 28 Feb 2020 06:16:19 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yw7-0002KT-1w
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 06:15:48 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 22:15:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="257017344"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP; 27 Feb 2020 22:15:43 -0800
Received: from [10.226.38.23] (unknown [10.226.38.23])
 by linux.intel.com (Postfix) with ESMTP id 148405805EF;
 Thu, 27 Feb 2020 22:15:36 -0800 (PST)
Subject: Re: [PATCH v11 2/2] spi: cadence-quadspi: Add support for the Cadence
 QSPI controller
To: Mark Brown <broonie@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20200227062708.21544-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227062708.21544-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200227183032.77ef0795@collabora.com> <20200227173224.GH4062@sirena.org.uk>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <5a63a66b-e82a-30bf-5939-842549299772@linux.intel.com>
Date: Fri, 28 Feb 2020 14:15:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200227173224.GH4062@sirena.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221547_140270_DC084F29 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: marex@denx.de, devicetree@vger.kernel.org, tien.fong.chee@intel.com,
 tudor.ambarus@gmail.com, vigneshr@ti.com, boris.brezillon@free-electrons.com,
 computersforpeace@gmail.com, richard@nod.at, cyrille.pitchen@atmel.com,
 simon.k.r.goldschmidt@gmail.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, dinguyen@kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 cheol.yong.kim@intel.com, mark.rutland@arm.com, qi-ming.wu@intel.com,
 dwmw2@infradead.org, david.oberhollenzer@sigma-star.at
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Mark,

On 28/2/2020 1:32 AM, Mark Brown wrote:
> On Thu, Feb 27, 2020 at 06:30:32PM +0100, Boris Brezillon wrote:
>> "Ramuthevar, Vadivel MuruganX"
>>> Reported-by: kbuild test robot <lkp@intel.com>
>>> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
>> Reported-by? What has been reported?
> There were static checker issues with some of the earlier versions.
> Vadivel, normally you wouldn't carry tags like that forward when you fix
> them.

Than you Mark, will remove it in the next patch-set.

Regards
Vadivel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
