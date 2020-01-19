Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD34141F96
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Jan 2020 19:44:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V5Fn7nGBUOtlPWh9Eg+B4OF8HtIjDKvLiaxye9ehZzo=; b=gtqQkjwXU8GN3u
	kMpmZHikYaZ2pts1TOQqq2WRe1n7aiIYdzWxJG/3h1bEgMpnIhScQFECwLdAUtAzjS2Y+Xnd4WYN9
	wLXFsbRNjz7dLgc7e1NQmqkSSZHlLwlBsAC+VbWFvEENV0/SeHBAm050eIwvDwJRqHxn83ubutc4n
	jZRtHWJBzfDWPWGVgaSOoyIjZFBf1wT1CRUC/e69fn4riLyLtly6b5zlrt7aOkn9EwK/Bt0ClAGm2
	2a94M++AzAlHpJLJcjfpkjF/DyyC9d6SjUbVORqNPDfji5p+MYVTsw06RELzIqPeXwK0MACLW/fkh
	gprpy446MQcEXT42EOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itFZ1-0005bU-Af; Sun, 19 Jan 2020 18:44:47 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itFYs-0005a2-4p
 for linux-mtd@lists.infradead.org; Sun, 19 Jan 2020 18:44:40 +0000
Received: by mail-il1-x143.google.com with SMTP id g12so25508985ild.2
 for <linux-mtd@lists.infradead.org>; Sun, 19 Jan 2020 10:44:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=gmKBxPx84PXNKr5CdAEsBl4o6OI0Ul1T9kdeNuOonXVMsPZvHaiVfrF6wsqmkO6amC
 OhpUNNF3SMjaFtPDB5q+oWHWGLwTM1KQcLAEAJsxead1wkkS8vgEkLcKKIbpXv93k89C
 Il/b6fig8uFQ2ful9dClSdBh6ES0WHCRI487g5LzaF7Sg904xrrN8vXROMW6UBU7S6v1
 1KY36Pw5SyxrOXfagNts4/xbaFFgof1/AzREyQlil09RYVWfcnHmKvyC/eKHTr8xAdVR
 8OHIBUIT1uRPI/WtlHnD2gmL8PhGi3ea1Do5nFE3xaprr/6eI7i7Fk2drMcN+8BwExKd
 ZFxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=/o+CA7VDRA7UR3HGeT8+/tYzwEnOXwq5B8ZHP2/HeYc=;
 b=iu++Lf1U+1cAnQj5DDcpRP1xcM95QblhAL0xtFsSx7gciXY3M/IupSPVA/1EM9S6WM
 1loTTCyJGRv626njTj0ocrAqxH1QGgXpMaubmIB7Oqwr550eK10eGZVOo5NZLDAzzgrW
 hKTdK8ysnl3zkE6BfTKse9QJt5pn7ONx8fOyOA4g2Bc/fDD+D66yq2fh50jwrrCO6Wcl
 MzLsB4S0g08dQQBud5lzCHg+oZ8lx9fgCwmY94d7Xfdmhtf2fAbJdXrytw2jCBkJl9ri
 vJc6Z9VXUcFlkWSJy3/EbGuj5WAJyoPW2ODOwiE+I2uttDkETAhQ2Aet5Sc9ZtA46Su4
 fHvQ==
X-Gm-Message-State: APjAAAWMSHlRI/yvJNtSR2yC/p0HBLwtqFzHvzcF2JO3l7yY2M1i1Yqh
 X9xbTeIveVPCCxZVsVmfuk2fda5qlF7ykhU9NeA=
X-Google-Smtp-Source: APXvYqw0/+WGODIUvKkziyHBLuQsuF4sA8inGcr6D1fE0jlGptJu92UkXoVDxAQCBYSMyoJXI0/9BUQNIZC+z8C9ask=
X-Received: by 2002:a92:5c52:: with SMTP id q79mr7225189ilb.11.1579459477506; 
 Sun, 19 Jan 2020 10:44:37 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:95c8:0:0:0:0:0 with HTTP; Sun, 19 Jan 2020 10:44:37
 -0800 (PST)
From: Favor Desmond <contecindy5@gmail.com>
Date: Sun, 19 Jan 2020 18:44:37 +0000
Message-ID: <CAOfCPNxP6Zd30BF2yc=mXgSsiq_K60AW+CVH-5JzXJEsBrwaJA@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_104438_193027_508E38D3 
X-CRM114-Status: UNSURE (  -1.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [contecindy5[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [contecindy5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: favordens@email.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello Dear
Greetings to you,I am Favor Desmond from Ivory coast currently living
in  Togo Republic,I would like to know you more, so that i can tell
you little amount myself and my photo, email address is
favordens@email.com
Thanks
Favor

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
