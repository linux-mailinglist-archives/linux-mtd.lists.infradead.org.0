Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E299F1EB0BB
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 23:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHWUrd8gsGRMegfZRT/0/sCw4f8kTduvgBMln6vwZz4=; b=Box58IcEGt7IZD
	+e5YkEdjrLZc/33/mZC3VoyJ1cyR5AQfahBS77gIiJgi3K1hbMxzaxc3W3z8GWyRJdpo/hO55+d4u
	wZSFkTXJbeW9/R6aSW9ihtlP71Ho3j12owyDWb7psiaBZWVQNU7Z8YvoBdr7qlvKLShOgCeOTGrAn
	tVIzT3pdjDXqvhjUpsl+GIAfwnV8uNjdbh1WnlsUounuC+EgqQlOwiNeQTyTEy3iW4bjrjjVqG8zM
	xWGZE/idfHmkv3BWs7SLcNnBCB0BkPpqr/Qm1adWWaOTWSrwsV0zX27kKKgHdufehWN3g3bgdMGp/
	nC7cyv1EljVSA5g3Ya6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfrhu-0004mT-Ui; Mon, 01 Jun 2020 21:10:54 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfrhn-0004lQ-MP
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 21:10:48 +0000
Received: by mail-ed1-x544.google.com with SMTP id m21so8351289eds.13
 for <linux-mtd@lists.infradead.org>; Mon, 01 Jun 2020 14:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PhljfA8dcj+WSORT9UU24bdiAcPkgiL6U3k8O8LuYxk=;
 b=t9GxqpU+A5lPYm4L6N2MEtj3WyrQ5SOVv+0styTmRtIbro1w8EnRBxArHtNvOjK7Hz
 Nxvs2k4uY2N0X7/86l8mIy2QWYMZfHZg5TzEZVXFxoLbX0ryqN9jMsRNzZcosS8MjxWC
 hDNGgOukSN9VwvbEGW25/Y9bMMzj/krvfJF8KvSl2263UnhP4Sp9y74bcKakaUmb+dd9
 bMPFEVSXzirn7K81xz6fX1btpty1IAcS9+jFDUNjwk0thsxrB5aI2BheDeVenOJgIYQk
 qQcszCkRBXABgLg9DdEYijEV7lgClWi+AGP/1Z9e+K9oGV8bwiNmnPn6TwyUoDwg5y0N
 G/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PhljfA8dcj+WSORT9UU24bdiAcPkgiL6U3k8O8LuYxk=;
 b=Hz690YwIbSxh+licB0Ir2AjC+8lilF7JGNqx4ysyobmQKkq3iKj4/TDo27Ufj6Zgly
 xlcjKFPxyZOkpGYIwU0Vnn+dvzoPRKTOKHfe5RK/NDO0U0GLnIfTCCGkBCS0ZfvGRcPK
 /2iv1wNdb4UEf/DQYWoz8p5yxiME6zDmNlxzBkX4RfHE1SiFcjSkeNC/Zp4ic6GX+zqs
 /aN8qz+yHJuXpRO5QYPh6HF0aqhyxcet4diB6yGYC7MzF3e50nwmyN0lQ5/NVntC0sEj
 u/12sqBGctFiSDn/OnnOLezeZyi3UHY7ZPCZyP23S7nmB7X8uMPnBpP0jygN6pwd8vnd
 jp9A==
X-Gm-Message-State: AOAM5322Yqooz+ZQth//CqXh4XfXqBgHpqLxYQNZLdeaTF89qyFbJKdP
 qMxBVV+eTAvHm/pkeJYBbN8=
X-Google-Smtp-Source: ABdhPJwzuc/YU3vAqkri4+4HSwDvptfGsJ0G1JS0/NJ2YvTZL8QPpuVTvj6pYVeRW0rXRThHc+83qg==
X-Received: by 2002:a50:a782:: with SMTP id i2mr23741387edc.33.1591045845072; 
 Mon, 01 Jun 2020 14:10:45 -0700 (PDT)
Received: from ubuntu-laptop (ip5f5bfcfd.dynamic.kabel-deutschland.de.
 [95.91.252.253])
 by smtp.googlemail.com with ESMTPSA id l8sm602396ejz.52.2020.06.01.14.10.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jun 2020 14:10:44 -0700 (PDT)
Message-ID: <0a4fc94213ca5c2040796a66942f626587483721.camel@gmail.com>
Subject: Re: [PATCH v6 0/5] Micron SLC NAND filling block
From: Bean Huo <huobean@gmail.com>
To: miquel.raynal@bootlin.com, vigneshr@ti.com, s.hauer@pengutronix.de, 
 boris.brezillon@collabora.com, derosier@gmail.com, Richard Weinberger
 <richard@nod.at>
Date: Mon, 01 Jun 2020 23:10:43 +0200
In-Reply-To: <829d76189beff5a50ddc56123d22bff3aa6a3378.camel@gmail.com>
References: <20200525121814.31934-1-huobean@gmail.com>
 <829d76189beff5a50ddc56123d22bff3aa6a3378.camel@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_141047_748298_6E478A13 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [huobean[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Hi Richard 
would you please help us confirm below question??

Thanks,
Bean

On Thu, 2020-05-28 at 16:14 +0200, Bean Huo wrote:
> hi, Richard
> 
> 
> On Mon, 2020-05-25 at 14:18 +0200, Bean Huo wrote:
> > After submission of patch V1 [1] and V2 [2], we stopped its update
> > since we get
> > stuck in the solution on how to avoid the power-loss issue in case
> > power-cut
> > hits the block filling. In the v1 and v2, to avoid this issue, we
> > always damaged
> > page0, page1, this's based on the hypothesis that NAND FS is UBIFS.
> > This
> > FS-specifical code is unacceptable in the MTD layer. Also, it
> > cannot
> > cover all
> > NAND based file system. Based on the current discussion, seems that
> > re-write all
> > first 15 page from page0 is a satisfactory solution.
> 

> This patch has overwrite page0~page14, damage EC and VID header
> boths.
> I know this is safe for UBIFS, even fastmap is enabled (you fixed
> this in (ubi: fastmap: Correctly handle interrupted erasures in
> EBA)).
> Now, how about jffs2? 
> 
> 
> Thanks,
> Bean
> 


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
