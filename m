Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75278106952
	for <lists+linux-mtd@lfdr.de>; Fri, 22 Nov 2019 10:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJkjkViZKdQr63JViGNrO/d9bVQAPle0w+AIq0I8s6Y=; b=S1yn3BeQ42PGpn
	B0lY56vZsT/+WTiKfiaXMJ6ODsKPjnIPmG9qnWLlbQJgBhqLoETxzIoE19V34n/Y5sCKyb+bmUcWn
	ez15UTcywWQayHy+63K8SXvMlPjqPt3JbiTkJF09kh6zUmnmZti/UmoMegDtJRUHyWA1rTkB0SZTz
	uTwUih0BgZR9+T2zFbU4acNJeX7QwU6NguilQUhOXrS+Y1nhuuOach0shuXD6KcBA44zJA/Y9VTxz
	kb08hk+8UCgsV7rn3LmqJF2pWgO8IWNi0QAvCwv0hTLLoCQH5soV4CjVLibfhG7qrN7Mhol+dXUAz
	V8PfdYfUB1tRhIXcdlww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5cw-00052X-Ih; Fri, 22 Nov 2019 09:53:22 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5co-00051U-Kc
 for linux-mtd@lists.infradead.org; Fri, 22 Nov 2019 09:53:16 +0000
Received: by mail-wm1-x330.google.com with SMTP id n188so4912379wme.1
 for <linux-mtd@lists.infradead.org>; Fri, 22 Nov 2019 01:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xh8kC7tDwRZ3oCombv+wQzJ0Jdh8LpQciSTFin/m+b0=;
 b=EfeislZOl2z+MqYAJHYxygzx5SuDztUCV06YV/xIH+M2K7mB1BNbshP1fdODp/nZC5
 cbi1av8xlApeTK1hd4vLEUXvgeTRdcIwbAX2Cv0oMWOeyoD3JLbqUxZ+pKGWqrO98XWE
 pZjMN6TqfJf0affIR2Oo1SFfUf1eV8xN65D9YkeOxJClW87GXUTbC3mMtF/rJRMF1dC/
 JJUk3cjPkpJeFIkrzirIMsh2Z5/5oUJhLQpj4cDaS/sg7zDB6BHpcoumvj1JVMcqydLo
 Z3T/hPNKj3Lr8jj76TgRL4lR479oPHvPPMShRxRfvoIbvJ+/A8Eop5jYE+Mia45QL9nT
 QYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xh8kC7tDwRZ3oCombv+wQzJ0Jdh8LpQciSTFin/m+b0=;
 b=g6lmeqdBag2bH6AK1GqX9vTR4YnKKosVCgzLOFwrvJF8m33bMjrfgydlNXQ+fat+FZ
 iwB/JzuiIbHeoM1Ql3HZgKxaCAMFec6O5BiewvSOZOLklBZB/0nX1m1Xhyl4yg8k9DNG
 91DbDbu8+l7yFikR5ken9mFUEw/wc99ws4mD483ZEsiSfildYB1quauXnGNgkqIPMqMx
 Bfk5qLPL6rONrX8xJt7QZR5Q1V9QqwOYURyQ6HJLG+tNRbN0jDr3FnQAaNNqNKMthJAm
 9fOAoqGPoRnfU0TUqrLcqDrzJaH7YxxVnRi/gaQMB7b6R9ABQE0U20hLaexTPfzVepAR
 v1jw==
X-Gm-Message-State: APjAAAWduBl6F+PudkAqNZAPmhpQHRklrAJlpiMm9G6Sq2nMOUenLg0s
 6BUoJpU1Xll7byLz3KaI5wCU7Kqhg06eFPuxF5Q=
X-Google-Smtp-Source: APXvYqxN0VwyRPHnGAy1FeK7cYQ4W8LLP9rcQyoTKIBQ5HpgUh7O32Nd+C9FmssP7QWy7/LdEdE/oSKkanGRHSOOWH0=
X-Received: by 2002:a1c:8086:: with SMTP id
 b128mr15493568wmd.104.1574416391389; 
 Fri, 22 Nov 2019 01:53:11 -0800 (PST)
MIME-Version: 1.0
References: <CAOfSrV1CNn6EpPkAkP8F2VQUrit_B-t89sSxW=08zyKVOdt9AA@mail.gmail.com>
In-Reply-To: <CAOfSrV1CNn6EpPkAkP8F2VQUrit_B-t89sSxW=08zyKVOdt9AA@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Fri, 22 Nov 2019 10:53:00 +0100
Message-ID: <CAFLxGvziLKNA0gcPo+EGwfpuv6Fe6=sNOfhEa1DR7sN0oOxzMg@mail.gmail.com>
Subject: Re: mtd-utils io_paral test fails on NAND
To: Otto Blom <oblom586@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_015314_699847_27000CF3 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 8:54 PM Otto Blom <oblom586@gmail.com> wrote:
>
> Hello All !
>
> A couple of updates on this problem. Turns out io_read also fails in
> the same way as io_paral - A page of data comes back as all zeros.
> Interestingly I added a retry option to see if it is a read or write
> problem and turns out every single time so far the data is correct
> when I read it a second time.
>
> In summary when I run runubitests.sh it passes about 70% of the time,
> io_paral fails 25% and io_read the remaining 5%
>
> Any recommendations on what to try next ?

Test one layer deeper. e.g. flash_readtest.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
