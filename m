Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD5C9130D
	for <lists+linux-mtd@lfdr.de>; Sat, 17 Aug 2019 23:13:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MB4YTTZ+fLAiNTwBurJQxrmNpeutAtHaabTqT/JiJkw=; b=sXsmibicfdgCEs
	M2TruSumooN2U2EpfijGKaUhS/QhDVWNrB/BbuZ5uMdP8G/eD6KAHltRU3xDRGUBbNJCM6qiW2prO
	DohTwsIB5ual7/YCDvYYq5LEzYEbjR9y+p147YPs9+5tS3eDFHyt2eanr8EwQciqPNmRqa3mE4um9
	ADE44fT9fQVJ7qL0lT4jGNm8FuEUx+U+bJ0Ytr8HOmbewrXzXF5hor1uFCwWErb6tDr4XiMLPGyZP
	2fp1phye/TQ/Up/YPwXWmDY9dkkEX6g0Qv7da2qS68BbyVGdUGivxMdzBIlru5W3HxJx3R2Kuv6e6
	vHAyOttLXZbz62O2kRwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hz61A-0001XV-D1; Sat, 17 Aug 2019 21:13:44 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hz60y-0001VP-JC
 for linux-mtd@lists.infradead.org; Sat, 17 Aug 2019 21:13:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id i22so13226167ioh.2
 for <linux-mtd@lists.infradead.org>; Sat, 17 Aug 2019 14:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=AL7Xo7O/pQKUNo42UZGV/pFyRrG+zXus+zNwtHz5W9I=;
 b=deCansAVyhf6TTfeW7XM1FrkPiKpOaNXepy8EGROiXSzE+3idZaMvhF5loMAvVUBWX
 8qQ/Du7og2kbtPPvNhwLzZWiLrJ6qrhbn+d5EChT/4JvkGHH56R9YNddG7eJVGTYNEBI
 QoW6LnQrYgb2yLLTPECkaOYkSk37tjvRRkXYTyrjo+mx8C8Hjp4wFkBmcQM76Qw2K1Eg
 ffQxDHpTJlgpIZyGleaux3hEVOCiLhnzK0XmbrN4f55/9P1fEgrVr+DnimObxh+7zRlK
 4Yo+DuQEB/pAtSat0tnGiWfIUMs/ueCHA8h7mqK5WJbFPHuU46Zze5HXtHZ3DWU/vE+t
 EMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=AL7Xo7O/pQKUNo42UZGV/pFyRrG+zXus+zNwtHz5W9I=;
 b=XzWpRGdTA/4+7zHm/kMwUHaQUD1Jh18ICPUjlFVaJpJi+g5tlzlBU85tEs7PKNj5pf
 N5ZMrixL2lIQdaVFlz471nHDoYcK7ELx94ahxPdk0z2P/I9y/rXblODGWAnFLRqT/GJE
 VOggiKwgzDL37fzR18VKS94LXaKvIwrStGlDHRKnx7F+M+qfGr+DoGjtVTNOAv5r9ig5
 IP3deXJXeOh2TaFjY0tqEM3IA91m4Tz+zOoYK9TL/PqWo6caovAiSJxBgGwkZP3Hi/Gc
 V1ZlZCu0RDvbntJ3VxRUXv/VLq9r9hkJbUFvaLcVKETidQ7HLw2xj9ZZ1ypQYpj7HxRL
 ya8g==
X-Gm-Message-State: APjAAAVgLu8iqbaYlBK0ceElt8PStHGFh/EsS7LDMOFM8uZUK1JP0U24
 h2I5wx1oXKVeFcruU5OGObvMsg==
X-Google-Smtp-Source: APXvYqxnIBRMl9c73z9hygAzKDBeii4Mh/dKY7KAWMtxtYJjPF4p6Ki6tTxIg+HAQN4yYW8gNJPyfw==
X-Received: by 2002:a02:a492:: with SMTP id d18mr19165200jam.27.1566076411809; 
 Sat, 17 Aug 2019 14:13:31 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 i9sm6980372ioe.35.2019.08.17.14.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Aug 2019 14:13:31 -0700 (PDT)
Date: Sat, 17 Aug 2019 14:13:30 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 17/26] arch: rely on asm-generic/io.h for default ioremap_*
 definitions
In-Reply-To: <20190817073253.27819-18-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908171412560.4130@viisi.sifive.com>
References: <20190817073253.27819-1-hch@lst.de>
 <20190817073253.27819-18-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_141332_652313_144F58D2 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Vincent Chen <deanbo422@gmail.com>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org, x86@kernel.org,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, linux-m68k@lists.linux-m68k.org,
 openrisc@lists.librecores.org, Greentime Hu <green.hu@gmail.com>,
 linux-mtd@lists.infradead.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-alpha@vger.kernel.org, nios2-dev@lists.rocketboards.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, 17 Aug 2019, Christoph Hellwig wrote:

> Various architectures that use asm-generic/io.h still defined their
> own default versions of ioremap_nocache, ioremap_wt and ioremap_wc
> that point back to plain ioremap directly or indirectly.  Remove these
> definitions and rely on asm-generic/io.h instead.  For this to work
> the backup ioremap_* defintions needs to be changed to purely cpp
> macros instea of inlines to cover for architectures like openrisc
> that only define ioremap after including <asm-generic/io.h>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # rv32, rv64 boot
Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv


- Paul

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
