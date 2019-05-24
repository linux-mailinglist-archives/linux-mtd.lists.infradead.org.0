Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F10B28E45
	for <lists+linux-mtd@lfdr.de>; Fri, 24 May 2019 02:13:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O8YeyvDOeZmYeeey7C3P2a8sd0P72ZL778hNyNhaWAw=; b=rVFmjc7bWLnHeCI3C+1T9Nevd
	7EPnDEOD4XXxmhvLx890jnX1kClQ+DEMdJfr/SleG/MSmK747FFAL3HjtWGmPFwGWVMX7FYzF8PD5
	GsoH9G5NCMza2Z6V8AVQuHLEOHwwPFsOKJKxVXZraUt9amHXUdynOLUGAYvmsQpiSRn1fAHgDEjiy
	kXCXCWYrZCChRuvCgaCKADPPjcqZkqveoGlP4h/A7Rrbqf2zIXQXff5TfH043LCmMPyJR2AVCDyhh
	pScKxR1DWbgxs9VCon5ZrsawiAAsi6rXzWn9sqUAfTv3KSP6shLuXqa4sNrmiQ+YuK/dfptJ4LApR
	EgXTP1cEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTxpQ-0003NO-0O; Fri, 24 May 2019 00:12:56 +0000
Received: from mx.allycomm.com ([138.68.30.55])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTxpI-0003N3-Sv
 for linux-mtd@lists.infradead.org; Fri, 24 May 2019 00:12:50 +0000
Received: from jkletsky-mbp15.guidewire.com (inet.guidewire.com [199.91.42.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.allycomm.com (Postfix) with ESMTPSA id E376D3D38F;
 Thu, 23 May 2019 17:12:41 -0700 (PDT)
Subject: Re: [PATCH v4 3/3] mtd: spinand: Add support for GigaDevice
 GD5F1GQ4UFxxG
To: Schrempf Frieder <frieder.schrempf@kontron.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>
References: <20190522220555.11626-1-lede@allycomm.com>
 <20190522220555.11626-4-lede@allycomm.com>
 <e438022f-3444-9aae-adac-2dd3dd0071b7@kontron.de>
From: Jeff Kletsky <lede@allycomm.com>
Message-ID: <e0682730-b69d-d774-d98f-53858e390d8b@allycomm.com>
Date: Thu, 23 May 2019 17:12:41 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e438022f-3444-9aae-adac-2dd3dd0071b7@kontron.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_171248_937803_75304403 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [138.68.30.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

(reduced direct addressees, though still on lists)

On 5/22/19 11:42 PM, Schrempf Frieder wrote:

> On 23.05.19 00:05, Jeff Kletsky wrote:
>> From: Jeff Kletsky <git-commits@allycomm.com>
>>
>> The GigaDevice GD5F1GQ4UFxxG SPI NAND is in current production devices
>> and, while it has the same logical layout as the E-series devices,
>> it differs in the SPI interfacing in significant ways.
>>
>> This support is contingent on previous commits to:
>>
>>     * Add support for two-byte device IDs
>>     * Define macros for page-read ops with three-byte addresses
>>
>> http://www.gigadevice.com/datasheet/gd5f1gq4xfxxg/
>>
>> Signed-off-by: Jeff Kletsky <git-commits@allycomm.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>
>> Reported-by: kbuild test robot <lkp@intel.com>
> I dont't think that this Reported-by tag should be used here. The bot
> reported build errors caused by your patch and you fixed it in a new
> version. As far as I understand this tag, it references someone who
> reported a flaw/bug that led to this change in the first place.
> The version history of the changes won't be visible in the git history
> later, but the tag will be and would be rather confusing.

Thank you for your patience and explanations. I've been being conservative
as I'm not a "seasoned, Linux professional" and am still getting my
git send-email config / command line for Linux properly straightened out.

Should I send another patch set with the `kbuild...` tag removed,
or would it be removed in the process of an appropriate member
of the Linux MTD team adding their tag for approval, if and when
that happens?

Jeff


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
