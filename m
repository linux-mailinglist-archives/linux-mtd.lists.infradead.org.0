Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0AF3C8B6
	for <lists+linux-mtd@lfdr.de>; Tue, 11 Jun 2019 12:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2UA+b0Zc5P6342uSuQacC8uHaoEn5x2ZQlc0aG8TJyw=; b=L+U
	ws/dDGyQSkGUtFcDVjm4QueuXzWPNjs9s8wL9GwVif5xTEAKpxztX4QtS+TIAoP+81YRhxWAMg0dF
	D6bx61riwXyjaUyoJxZ2mCGUqlGMDiYeS9u2IyLOWlk/AnjoMTx9YQmhXoXsR+raVpx9ipxLBf7ag
	6WXBwz69NwRzTWn5EWWK7StzfVKeqwWqbTIkLAeC8iO9KiZXqBCVdhqkbbIOC7okxPw77daS0ATQ1
	YqintbT21EZnUIDOi52u5eigbLZSAOOVWdtP/ceGJdbSbFf5P8ufVXXTbLiMLHMaOw2ZzLz0mqf4R
	cYgY28pVnhCQfsUPhcLWWvvCkjyNkZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadtM-0005I3-ED; Tue, 11 Jun 2019 10:20:36 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqH-0001XR-49
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 10:17:30 +0000
Received: by mail-io1-xd2f.google.com with SMTP id e5so9405072iok.4
 for <linux-mtd@lists.infradead.org>; Tue, 11 Jun 2019 03:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=XlFqX+W8ezv9q+KdAW1Rh41VCCDjZ70TEhiepSkQ4Tk=;
 b=PhioBOZjZddFGpbykCMJTC/aRgMTagi3hMSj8fZ5qXnKAh+hv5tVwHw7o8OrN+poHy
 nRyU35XoAHNTiqVib2duzkpxLDy3paKe/ac+zj4MKoE1IV36cuQbGa/uKfEprL6hFhDJ
 kQfIg0MlikzkstNAyFHiQt1+WQMa3FnQMoGRmC57RW5n7fP7A8f+3aF1vstj5vWQPuFn
 OmGidCV+KEUALffuuREAUaGJUWmDIJGB9hCuiWA7Zw9wCB7uYPx6y9bFo8O5z3tEiCcF
 kr8s8DlpW7dRd2xcUlyXwuPema3O/AoFFf9xWOLTy5dLpWAsiIeLLxZFVX7aGrRYaTZ3
 wSpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=XlFqX+W8ezv9q+KdAW1Rh41VCCDjZ70TEhiepSkQ4Tk=;
 b=KoxxH/eqEQDyW0neKkh7BXlV/PUMd3YRrII+BXUbxktg1ynnxFTMH3yPqkJZC+quWY
 yQbektxRNaLgl7iwV+YX8nB/iHYU13otaBWxCQK6AigjwpzsrAmPgQGXgPPrHdPyUCly
 itV132NyVMXvLf5dktglt70fcKzGuToXfa3tBKQe7DVW2KiCj81IsL3Od0gPIE8clJQ1
 PTqCH4PC0CwGUtwb5d7rsURGXC/U4x7XCP2+j/bttSVvjcuuqSiJrXO5+Nfp/r9isPHv
 HrV7gyYftE5mUgIjFzzEon1VDj8Xj4tgH6x0gXyOuuUsUtwpKMIgd6qq7SPxOZL5XSQT
 kk6g==
X-Gm-Message-State: APjAAAVQ+4cPLoBFGmE6heSj1b6K9dxGvYi6qdhguxMo1ddT4iruPSFT
 IIHLli7FwCLNDPwdMtpa7LY0R1q8IP+acCI7SySHjFJH
X-Google-Smtp-Source: APXvYqxU0F/U7txSz1CwoZViZ2THew/cSnuEaOdOeuQYz56ZBilpeAjqcdDHqRA9jaNoJXZj7SWvUvShnqTD5G75suE=
X-Received: by 2002:a6b:8b51:: with SMTP id n78mr49541299iod.192.1560248242035; 
 Tue, 11 Jun 2019 03:17:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Tue, 11 Jun 2019 03:17:21
 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 11 Jun 2019 20:17:21 +1000
Message-ID: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
Subject: NAND user space program
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031725_232016_141E7174 
X-CRM114-Status: UNSURE (   6.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi,

In NOR flash, access flash in user space is integrated to the Linux
system read / write, is it the same story for NAND flash? I installed
mtd-utils, but not sure if I can still use Linux system read / write
to access NAND flash or not.

Thank you.

Kind regards,

- JH

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
