Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B410F173A32
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Feb 2020 15:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRiQFWPi+QL1inEFF6MLjnO/FwEEIP1D10Jnho2V+X8=; b=GbdQGLDHdhK+nY
	h1ivherjEbfovKn1k8SAtiQstjpcpe8UJRz4XcKwHJCQIklXFzrWap8YLBvRHcf9UJHwkvFGuqRc4
	Ph2PwE3DdRxcfCKUnpdXIFKLnPdHyH4XDLxS5H60hpmKsr3sl3e9dGiNk/LNWQ1D1nDSOo+1RkDbQ
	UW/lo9QBGm6/9OQZEKNLcAhEmzCGuGNdUJn+Y1/itUa6+GgcpjBIOQ2ZPpEKZ174zLgnUgv/rfe6s
	xqHPvA1XdUt8bzis/fqv1i+8dwcvUtFUd62QaRPEfMzHCU0tZqHQZKLmXzVXnisThW8fWxuYqAMtO
	lraxAciLKp3wYYvTu8mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gtP-00038z-E3; Fri, 28 Feb 2020 14:45:31 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gtK-00038W-1v
 for linux-mtd@lists.infradead.org; Fri, 28 Feb 2020 14:45:27 +0000
Received: by mail-yw1-xc42.google.com with SMTP id x184so3490483ywd.6
 for <linux-mtd@lists.infradead.org>; Fri, 28 Feb 2020 06:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=WlHYJpV9LDx+Kwr6eflFKbZEkhaqyVolWhtkZZvo7vI=;
 b=GkOjaf/q1FzCfBFXjuVe0YaR6gdnsjqUpGIPoO/3gLgf7h+xUD4fONQ6HR8rEaAvw2
 TU2QzpwxBczKxmLooSOGzyn5wN7HBcea+gRntnUGgshAi+m2J/L69iBCuqYVl7Sy8LKU
 4DrZDIjwRAdv3vLFibyYke9j8MAYKbhZYJWm5/QwSOQRogwtXS4YhOHeFcQU6ucrpPXl
 ohjjoTc1cDLXgdhNkr47QQ4yEIwF0YwacdBkcYqL4VKJGmGElpOKefuM0OORrUVY+YkI
 trne7+4PRLq4raVBF5x0H8kMr4WDbhOjGvGYpd3I8zCE2sQHycRaF+lZ+UqE3HyhRv5L
 RsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=WlHYJpV9LDx+Kwr6eflFKbZEkhaqyVolWhtkZZvo7vI=;
 b=P8s2JktYTWSdyM3zyrm15sifeh1Rj4zxs4d04BlxV03s95EPvP8wOrHFUA11uaXXod
 a7JestKCGZbEb+lj57lNzUX+rg7iHAMzsZciEjlkgXyhwCWRKwx1DhAMFyal+Wb69o1T
 Dh7UTTqw80xHWS3X328W9yYlkFVIqliMJuF4dbAn6QLIL2iNKKZbJNAzYoc8Q68bzo/b
 tUITVHBX+UGV0s0r3UWUkkKy/TqOYOSU3I1zM8iJ6tZKB9S6f5GBEvZJNNxDwRMUZ+9F
 WvP8dzkEn/ZtuN3t2dWtehFksQt16cYO5mgtDa0jKqjSce1bOoVpknW5+a3Q3+Ziu/7G
 PVaA==
X-Gm-Message-State: APjAAAVdgcV1n0xOdQeZZNYqH8zt031CAcrfmgP2uudxgER5001diBde
 r6jMqyWzV3fzIdgtNc337+IGveR8zE1RLU0vDRM=
X-Google-Smtp-Source: APXvYqwRu1mn/DXSpaYIzN/RhNH0JwK/+ZHCxuYEkBNKMCrhp3K4DLPmBgHVjT/ErZa1QFj3Jlt8hDlGd8D8vojNsCs=
X-Received: by 2002:a25:b98b:: with SMTP id r11mr2941908ybg.295.1582901124731; 
 Fri, 28 Feb 2020 06:45:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6902:52f:0:0:0:0 with HTTP; Fri, 28 Feb 2020 06:45:24
 -0800 (PST)
From: CY Eden <rev.robertevem@gmail.com>
Date: Fri, 28 Feb 2020 14:45:24 +0000
Message-ID: <CANw8eOESjH2OuVkhW=DXT+gs6bmFzQmXHpoLECJgc43cA2VxAA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_064526_120143_8BBD5244 
X-CRM114-Status: UNSURE (  -0.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rev.robertevem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [cyeden1[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: cyeden1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello I have an important information from UNITED NATIONS for
you,reply for more details

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
