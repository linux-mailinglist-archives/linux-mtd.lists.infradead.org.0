Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBC7191C43
	for <lists+linux-mtd@lfdr.de>; Tue, 24 Mar 2020 22:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNROdQ1VKN/lMlRaJPsSwrbyJmCRlSqg0VpY2CRYuF4=; b=CKXMk57WHawtQD
	coQ7Z5l1lEvxvX/7kZ9UHBPRfLvt/G0gyS4fs52LrO8Ps/1WtzT6EMRxFhOwhiPT7piqaxw7dLKX5
	X2xyrCRz4UYUnScsO3QB7mdI2M/EbeHBxvVKQCxP4otfgUWNwIaQw4cKCmU6gSCOj3ZU9LLm2UI86
	NVYYgPU53BbwvEPWJuGl1O5SXGgtnJZDibA66OU54W3+0N8r++BkffT5N1p3QgvX/ixG3oiJgfzLj
	ut/Ff98Gb3IMa0FsXznVnVftcrJbkr8Rs8wQbiBAvmk0+W5j92ctKIy5GkAQJpf9Pc2U2v78nr0ES
	2hclLP+yv5dFlHLZVeOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGrTZ-0008A6-1B; Tue, 24 Mar 2020 21:52:45 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGrTE-00082j-FD
 for linux-mtd@lists.infradead.org; Tue, 24 Mar 2020 21:52:26 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D7597FF808;
 Tue, 24 Mar 2020 21:52:19 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>, miquel.raynal@bootlin.com,
 vigneshr@ti.com
Subject: Re: [PATCH v5 1/2] mtd: spinand: toshiba: Rename function name to
 change suffix and prefix (8Gbit)
Date: Tue, 24 Mar 2020 22:52:18 +0100
Message-Id: <20200324215218.14182-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <0dedd9869569a17625822dba87878254d253ba0e.1584949601.git.ytc-mb-yfuruyama7@kioxia.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 6b49e58d6d9dab031a16af2af5439f28a37c4cd9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_145224_642788_CFAE03E8 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, 2020-03-24 at 06:49:44 UTC, Yoshio Furuyama wrote:
> The suffix was changed from "G" to "J" to classify between 1st generation
> and 2nd generation serial NAND devices (which now belong to the Kioxia
> brand).
> As reference that's
> 1st generation device of 1Gbit product is "TC58CVG0S3HRAIG"
> 2nd generation device of 1Gbit product is "TC58CVG0S3HRAIJ".
> 
> The 8Gbit type "TH58CxG3S0HRAIJ" is new to Kioxia's serial NAND lineup and
> the prefix was changed from "TC58" to "TH58".
> 
> Thus the functions were renamed from tc58cxgxsx_*() to tx58cxgxsxraix_*().
> 
> Signed-off-by: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
