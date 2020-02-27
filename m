Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FDA171838
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 14:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olxdK/7+TQErFj7sa4iDgpkNk0THO69xtsX3gxaGxJU=; b=UAbO8JKkFZFSmc
	SQqPfUMGdAbP8Ma0hvTQTwHhtVYX1II8bl569TcCqkFdloFuAnNgqXIXDTKBfKR1rrtP2yC+MO0ES
	JajBIsxE3qKU8in1TCXCdSS+XfQuP3PLdDI7/TItjjzFg+ky4DWWD12MRsQ02t0h6Z+M0koNoL8iP
	fkb9soKmGvrDmyy+fDE4r1g5eXSMdMDPItln0uDSerNMSYEFc3uqz9dfFwH43Fc7msPwDWxWxG08o
	7NYTxqitlJ7EyPbl6QkNpKAJhkerbUUM7Z/mq4ZqRJ6ewvrYJ616zJ9iwow2jVMQQuo48ftWheRYF
	l2HcMunMZFiLoiRNnSgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Itu-0002OV-66; Thu, 27 Feb 2020 13:08:26 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Ith-0002OD-9n
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 13:08:14 +0000
Received: by mail-lj1-x22b.google.com with SMTP id h23so3317615ljc.8
 for <linux-mtd@lists.infradead.org>; Thu, 27 Feb 2020 05:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ldaFzgIs6bCWOhWssPk66WQDK5HnKFmwwN8NVriWAQU=;
 b=ZmqEtgbotVqXrqQVpdqOEKr7COMIDeJjBPpVd46YGlPj81PDuUmzoLnAYc4sWLE+Gi
 9rOXHz1oIoN++fowLfEzQlRtEZvoFdSIlbsF//1IQ7AHcU5ZsIEEN1iDdPOIPPHrCeLy
 17xO2NAVFbu9/RcOxbwI+Pzd2EGmDSd+nJyO/tSxe1KTW4ppkG8EYc2PV7TRjfaiCu8a
 EXKx3Mh6uFIKvQuzicYjOICcwUUUuU0oZnaK/8aXKzbVr+Fn5TFn/3Fq8BQl2Nto6Y4X
 wMtko2yNdHG/HEU7E0IVx7eelsxgVtOg3eacdFEpsbb5ljpeJ/jUeHJ31ynJx8eG0Y9y
 QykA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ldaFzgIs6bCWOhWssPk66WQDK5HnKFmwwN8NVriWAQU=;
 b=q0LwEX5APttQYQfrjohnDxsqt1ARe/66GNQ/fQTCww5pP2BUkax0m3OKpkggmt6uBD
 NSyTWiPQdDurqt4xQRzjEiioGkWIPDWrFzg7MZa0FaN7U8xv4yEudTKShpmYmAFFpCy7
 F0E8Lw3gbGpEwDsTWQJqmteroViVW61o+VmT/BQwyDUgZzJOYQDbj/RJ8My5nLmZh9Wi
 9+ZH6MEp4N0yvQAqBcrZyrYAojvFtz3QABNKQtlIEEmoDwGYEcq/0BJI1d/pDZc+V/Ex
 txyHvvQHddRAr5aZ3yTlWrLDeXgyGJZH9ugCyh6J2JsznzWq9NZ2eGKgOBYuwQNyIdyH
 sOXg==
X-Gm-Message-State: ANhLgQ2NaTnK/KBMV6Z3yTROrgxIiwA72zpHwkyrf3yNYzU7qfEj7Dhl
 LJTVROXg+spykpw5cNrfQtzlrpJIblLPJfuq87/SMw==
X-Google-Smtp-Source: ADFU+vtj5EssL9gdJoj9F62d33h1hM7+VGZdJB0MW2SjK8jiruAfPxbNsYDGDTCpsbFUA4hgiw5apjS9PiakYjadj6g=
X-Received: by 2002:a05:651c:cf:: with SMTP id
 15mr2933457ljr.288.1582808890301; 
 Thu, 27 Feb 2020 05:08:10 -0800 (PST)
MIME-Version: 1.0
References: <ee9d424c-8b89-c8f6-7b3b-1ab09371e04c@exertus.fi>
In-Reply-To: <ee9d424c-8b89-c8f6-7b3b-1ab09371e04c@exertus.fi>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 27 Feb 2020 10:08:07 -0300
Message-ID: <CAOMZO5BHW7r8aMT_7g91LpGem+WpP+PRKwnsfu9v7yn278pErQ@mail.gmail.com>
Subject: Re: Power cut leads to "corrupt empty space"
To: Timo Ketola <Timo.Ketola@exertus.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_050813_342844_5E6D24E8 
X-CRM114-Status: UNSURE (   5.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Timo,

On Thu, Feb 27, 2020 at 10:04 AM Timo Ketola <Timo.Ketola@exertus.fi> wrote:

> Storage is NAND with 0x20000 erase block size and the kernel is 4.9.88.

Could you try with kernel 5.4 or 5.5 instead?

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
