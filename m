Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E88C5169827
	for <lists+linux-mtd@lfdr.de>; Sun, 23 Feb 2020 15:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GPLTIRnAi/1tS73WALgGDsCldeq6NxEbtlNwrcclS6g=; b=J2Sz1rsRdShNLA
	nErqoLo2Hv0X3qILPqXPQ4IA8SD0DYvCmY7h6P5OncIe3kOHY/+O8JhhcG/4Axo0nIr5/2ygM0/2E
	Z4ubTHcE2k5i4aghg4noJzFVcALvrecxrYoHnTjhSvJzUNWfyed4s9v/8tCePgjpCpuV10012o4sa
	5jPzVENo/YTlYgcbYX5NHYaqQlhJaXlzdh1O4flZn/S81RqkgKlo5y/ANoD6Xi8QvgA6Z/7D0vRv8
	yxiwMrf89BdTuBwpoA566feBBdmKsYgV6rfFusp2IXd99xIHnypyzlonkLShdBuvimoZzh1FX2IDg
	jK0bmaKTxFgJ0RnVe+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5sfX-0003I1-5R; Sun, 23 Feb 2020 14:55:43 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5sfO-0003HE-PX
 for linux-mtd@lists.infradead.org; Sun, 23 Feb 2020 14:55:36 +0000
Received: by mail-lf1-x143.google.com with SMTP id s23so4989701lfs.10
 for <linux-mtd@lists.infradead.org>; Sun, 23 Feb 2020 06:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=2/FzAJ9yNU7WKv3NSrbfL3w/DoNke0AZDiB0sqB9OlA=;
 b=gsI53rjbi/YVUh0ocUZ6JUQomfL2PQOa3tQhnyJnKVTSz822ImnozW4s168wn7Tvcb
 RAqhK9RFUp4bIurIRAV18GF7D8XUwg8dTB6IASUYDEx/RJKIXfNxE+Ykq6/y8iQGuc3o
 Suh/hB1m0WqIPH6pNsKIisG2bkEyKefjQIqvQjs6X1vbYafJ3K/6jRzfPKFEdkGIltRd
 vDSv4yh/tjuPHBbUU2WTeVQkQYBgpOhq78Z7/3i/c90S8/E5cnxe2VmclcQYtVztRNRr
 MBDcOzENz1CSm267H6T+W8UQ+GFXfYz0Cea6mp6t2D/YoGndudsKyODfdIfSIERA/dvd
 Iz3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=2/FzAJ9yNU7WKv3NSrbfL3w/DoNke0AZDiB0sqB9OlA=;
 b=bWA5gBEQ0OcaoZg9mQ56Nv/7YlULYp946+ZrQHUMNOB391fNDXDR8ENvp8GSIxjWR8
 l609J8GQNcLkb207w1Mewa3emUbmy6dhIXT6MPuwBm+8opWw9A5hG7ZoQFzzD7/TywM6
 kR2RIY+QbMQV0vP22ydz7mlk5AigNnKjTUIQWuSjQtyfwwhptG/kJRE+AFClR4kY7KIP
 +2Vm3VXA/X9ufdIc5Z0TxXpLGT25WsLX0e+yi9PMxph8oxCXIuNyq1tS5kxJ1REySEps
 T+6t7QQJA//f/jXClY0HiJeiGiQbzJQevY2OHJ8iX5Myyb86O6SFJDhhRe2OnxL+7q1g
 JutA==
X-Gm-Message-State: APjAAAWumwLX7RHiYcYkjVeuH0hNEDusCKsFOHTcWGSv2kzHYybjA9BJ
 UXBZp0TV8VdxH+qmqvMDZ7wbhRdzmDYo/tAdqQ==
X-Google-Smtp-Source: APXvYqw6cge6Yk5vaDenXLl54774HeeIfq49m+rlVMpivcgtAkvDVcwDIwnl5Yyfod/Q6mjDmLUX/QOkiCoNC/O1Pyk=
X-Received: by 2002:a19:878a:: with SMTP id j132mr13274107lfd.83.1582469732088; 
 Sun, 23 Feb 2020 06:55:32 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6512:308f:0:0:0:0 with HTTP; Sun, 23 Feb 2020 06:55:31
 -0800 (PST)
From: Philippe Siaka <phisiaka01@gmail.com>
Date: Sun, 23 Feb 2020 06:55:31 -0800
X-Google-Sender-Auth: OXv_J58-ZZ3N7_KaRfyuUILG1CU
Message-ID: <CAGDiBiGf_zJ6joQjEXujdFoWiMqowF76seSGpHogDk51gG9tVQ@mail.gmail.com>
Subject: PRIVATE MAIL FOR YOU,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_065534_832889_CD101413 
X-CRM114-Status: UNSURE (  -1.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.5 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [phisiaka01[at]gmail.com]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [phisiaka1[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.9 HK_SCAM                No description available.
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
Reply-To: phisiaka1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

I have a business Proposal for you and I need your mutual respect,
trust, honesty and adequate support, get back to me should this be of
interest to you.

Mr. Siaka Philippe

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
