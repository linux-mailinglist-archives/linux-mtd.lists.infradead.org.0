Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A019ABBB6
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 17:03:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7+eWIHaCzc4ZQKETJbO+smbwr/XYMdgOyLWCzFWBfo=; b=U5Q/x5RutJXWEA
	EqDyoTNnFIy1XNyMCFfLqtRD2h0HxybrG/wgokdOdtpA9a1UpGUs8h2SuJmwPmBXvy+hVP/czlzcT
	5vejLGd1xBm5LeRMQ6sYlQ6eOGCxjitEpt61QBsQp+abtTrFkX5E2vmV9Z1dtBfGFGuzMHuisjxND
	a+Roi2k04ypUUSyK8rxsy9Zt+vDubIg4DPO9Wj2i0JIGVmaswTt9kCstpokPYvn0qbMnSZdTurCG6
	Fp/nOjckc1tt0xMFOE+SawVcLjuUIZszOE+KL/HtoKLJSy3CfCI4t7E6zsDRa4G3SimWyiGgMqArN
	k8uzLhHllpkadnFx5mVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Flx-0004nr-FL; Fri, 06 Sep 2019 15:03:37 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Fln-0004nQ-Bm
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 15:03:28 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id D1A6597D;
 Fri,  6 Sep 2019 15:03:26 +0000 (UTC)
Date: Fri, 6 Sep 2019 09:03:25 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] docs: mtd: Update spi nor reference driver
Message-ID: <20190906090325.330a5945@lwn.net>
In-Reply-To: <9110efc4-35e6-ff04-1a6d-d5d9f93927de@huawei.com>
References: <1565107583-68506-1-git-send-email-john.garry@huawei.com>
 <20190906085212.79ec917c@lwn.net>
 <9110efc4-35e6-ff04-1a6d-d5d9f93927de@huawei.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_080327_409436_E459876A 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.79.88.28 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mchehab+samsung@kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, frieder.schrempf@kontron.de,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 15:58:41 +0100
John Garry <john.garry@huawei.com> wrote:

> I don't think that it was appropriate to apply this patch in the end - 
> maybe this could have been communicated better. If you check the 
> subsequent discussion in this thread, it seems that completely new 
> documentation is required:
> 
> "Actually it seems like the whole file is obsolete and needs to be
> removed or replaced by proper documentation of the SPI MEM API."
> 
> But nothing seems to be happening there...

Ah, OK, I lost track of that somewhere along the way.

Unless you object I'll leave it applied, it's not going to do any harm,
methinks.

jon

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
