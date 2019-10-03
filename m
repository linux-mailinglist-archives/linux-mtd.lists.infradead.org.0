Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4764FCB112
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 23:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjTHI/XJX9imAMqQU7dZlvF//JVeK0cCnQ4e0Rs7ZGk=; b=I0e7d+VwzIPjAV
	RN1PZvrWJC137UETxcvEuHXcmnGkJ5fRlM9IzF5AxYDChRcXzUlLPznlQU3jcOvf6YBzwUrwrWTs9
	u/KoXlemNZiaW9meREs8R9L7nOW48VdD7YDKHVgu/FkfYabiPIOV14SUaXZhjOSaVF8O8EUpbfaAq
	NvSluSvM6qO/YPmurgbKHs/SdV3eIyKqLafZN15qD+GJiiKla8C5161+Uc2eIojE94S2i26lA0bc0
	xt0P94YNB1+k3x/dhxfzrXXI+OKd6RhdtaY5Ce78IMkPIydSRbfCdWIeaY+JRnp8hmcXIsC5ZonUR
	cwHRfnO14Lq41h+QpemA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG8cV-0004cT-0a; Thu, 03 Oct 2019 21:26:43 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG8cK-0004bs-DN
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 21:26:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id c6so8869082ioo.13
 for <linux-mtd@lists.infradead.org>; Thu, 03 Oct 2019 14:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=AL24wpqBbTMh1eouL19mpkYAzNtseGQtka3EhdOhnP0=;
 b=NLYygfEYEoP3qOVbaML9g2IfV0nzB9jIDc0s2RaCBbKXlB5UgTMLLSGIWDHn3LegZA
 WDpVfUodSh95xwQzf1iElYJgjwG35YdlqrZm0rAAKVRXPclTsqLdja7TayvP0ETk59DR
 NCQudxgrBNU8bsi5IloaNEkEvyB3ZMDAQOFxxW/wKXDfK0uZouENHIjPR9Nk+5i2e1Ix
 epCpHXuEZyCtRBhq9xoNdBX8XvBahpUJb1Szr4JQi8h2fqTgYq5Ggs2o7a/kUF+/tcB+
 tYd/xfQZf8sHzCUGYVWbp8exNmPiHOPG6DcFZojhQOHE18eY6jWz3803GBsyt6LqkeFN
 3Wug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=AL24wpqBbTMh1eouL19mpkYAzNtseGQtka3EhdOhnP0=;
 b=ji3eDH7KZ++kGM7QkPDdfrKg8j1wcD1SBCyrrtOohlPngb2WiMOWk3pxd+A/yxWA6v
 r64wHpXh/mryFHdpZJZ81PyrH/8PyyhuZ+4hxsgo+VWgv2tgn9yHvEE1MyqxL6/DsxRK
 lsgkQl0sbcVW7ws+5elhTO8JVHlM000M4tT53f+RfCvJNTAtsRkiefNPoc1Q9MOnQovT
 2WMzlO+cOgjxrKlUJ2KXJd/WdwhWTt9GYimQZHhfMDZBom03QG7Z7sbgc8bfb2F4EFgv
 gl4g9SujtNdSVaMaxLQLf+q3Jh9GTk02gMaWuRFP2oz8cRN8jrrrpsO3CGflSEnJy+zM
 bmMA==
X-Gm-Message-State: APjAAAUNge/hlOqduziCW0E1J8SpZ9e16JSH5gcFqUdLsXM8dFSzIC5G
 qc26bEQzfTqbX87Wsayi/zxdF1vjlxs1xNHXJx4=
X-Google-Smtp-Source: APXvYqzimjnsPkir7ve62gWmVO8G6F/KUtDNkR9VWaMxrPLnBWYa1AjTrEZQcYSz/qdvLyc0Inpoc8mQOsdcEUzjJPI=
X-Received: by 2002:a6b:b714:: with SMTP id h20mr9966667iof.302.1570137991401; 
 Thu, 03 Oct 2019 14:26:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
 Thu, 3 Oct 2019 14:26:30 -0700 (PDT)
In-Reply-To: <CAFLxGvwUK=hb6b_hX8HSTVzAZW7djBL_3bRWvTXcVUw+FuBTmw@mail.gmail.com>
References: <CAA=hcWSR52BJB4+k2k4CwLTQUVmvJvR=bjRx6kqe2aar-PH21w@mail.gmail.com>
 <CAFLxGvxg3dYoiiTy7=vNwC75s529akqx0DO3ozLrP_TbhATr_g@mail.gmail.com>
 <CAA=hcWTzAMU5GvGzcG2Ha5RH_=QUTEAa3gZkMoe=cgtZGG+h+Q@mail.gmail.com>
 <CAFLxGvwUK=hb6b_hX8HSTVzAZW7djBL_3bRWvTXcVUw+FuBTmw@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 4 Oct 2019 07:26:30 +1000
Message-ID: <CAA=hcWSYNtCyN460gw1LNJe3M2TCiXKUzv84_kCG3PO78BweDw@mail.gmail.com>
Subject: Re: How the bad blocks occured in despite MTD manages the bad blocks
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_142632_456859_37E38374 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 10/3/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> On Thu, Oct 3, 2019 at 1:14 PM JH <jupiter.hce@gmail.com> wrote:
>> I was told by hardware engineer, it was broken by bad block problem.
>
> Did he inspect the filesystem in detail?
> If he said so based on the same information you shared with us, it was
> pure guesswork.

Yep, he did.

>> After those lines, the boot stopped in an emergent mode in a prompt to
>> suggest to log in by Ctl-D, but that could not work, I was not able to
>> log into the file system, nor can I get kernel log. From your
>> experience, what could be likely the causes, hardware or software?
>
> Without logs I cannot say anything, sorry.

That's ok, as long as I learned it is not caused by bad blocks, I
doubt the software caused meltdown, even the full of file system would
not cause the damage if NAND. So, my finger would point to hardware
problems.

Thanks Richard,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
