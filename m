Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215DF1CE83E
	for <lists+linux-mtd@lfdr.de>; Tue, 12 May 2020 00:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/YPsKu91jOyuW6v7aZ3w8pNLK+h90hEaS5drtkHvgk=; b=bS+09MbRPW64Ks
	wJnZmQhh+tBGocXl07k4cs+662xqrs1D8cM75QHMqOzBZJOktgjlFuyRLxAkG84MOeicyMS9pzmrV
	wlC9cTYsuikSaGXT08GC/5NaW2HBAkS53Q0bpSwj57vGYK+9LjTY8u7iKQHGaANk+R7I8lPt8rtQi
	IRucmDzHe/bMccMqnSG363lARjDbFCG8XdM3/0M+fFSVpLf1Iv2/exiyjsB/NlDcsb6RX5zEOeCvn
	743RddM2HUkwYUqxjCiTsVQWwMl1ahucwO6SKyFX4wF2kcthVCd72xR7Jq1A5BZjlRFJtF2czHIxh
	8hzOLOhMnChRV8PqFJnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYH55-0008KC-TL; Mon, 11 May 2020 22:39:27 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYH4v-0008GE-6y
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 22:39:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id f7so5398729pfa.9
 for <linux-mtd@lists.infradead.org>; Mon, 11 May 2020 15:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iAjP/dx+TOMD3h2UkM1NHk9+DSE/HLxGXOk37w+Uu04=;
 b=QuMzdF6PS8DlHrgHS13L45Y9TnYal1cjdG9qFL4fSAMYsADcAWEElruJKaZMbOYFY8
 LLYN/42JZ4pb/bgLL6M2LY+My3cI4oIAEiUGxljboC2qy+VchFpRvHmr0RbSV8NUHYru
 ZE+amPP6HfKJFhKzEmlKRLFeK6aGAM3UVxyiY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iAjP/dx+TOMD3h2UkM1NHk9+DSE/HLxGXOk37w+Uu04=;
 b=nL6ewuDfrC9AoyYWL4oMLPrgVDTWAKC9mK63Rm0jtp5E9DHZTcBDTiPa6260Q8EjNZ
 ttLPoZ3lhE+FWj95PFgL6BuunSFkQDTHYon2aS9v1sali5hYHU76uAF8Py8xOrC9VPxH
 xt7RznAy3j3z7KIOuXN3myobrdymO8OtypkFVsVrzR8vc6e48WCxGP2pZ7QxZ2GkO/ay
 eEelaAxYEXbY9LbgrisbxxuloA7fQkX4ljykrK/5i+Oyv8J74iNI3drCA5t66qGgMc3g
 oA3ojWazY0IplLpjY33R7FE+q/aqzzewr8DLPNBfcPOE85tqpYVbBSrsZxLrBa/d2Jxs
 3rHg==
X-Gm-Message-State: AGi0PuZGmxuLlMt4/iLwLCBi1eK8iOLc9FYKMd+y18qAJl9t5wcGdeTU
 n8yptPQmWRtNIObeTcen8ee81A==
X-Google-Smtp-Source: APiQypJrZN+k1vOsrote6dfc4R1IK2fAk8lFQlDXHNEbyE2cjka13mhe1A3zpKLQZ+uySGgGBTXm7Q==
X-Received: by 2002:a63:7801:: with SMTP id t1mr15712443pgc.192.1589236755921; 
 Mon, 11 May 2020 15:39:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y2sm10207468pfq.16.2020.05.11.15.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 15:39:14 -0700 (PDT)
Date: Mon, 11 May 2020 15:39:13 -0700
From: Kees Cook <keescook@chromium.org>
To: WeiXiong Liao <liaoweixiong@allwinnertech.com>
Subject: Re: [PATCH v7 00/18] pstore: mtd: support crash log to block and mtd
 device
Message-ID: <202005111537.E2DA45A259@keescook>
References: <20200510202436.63222-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510202436.63222-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_153917_281013_CE1591CD 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>, Tony Luck <tony.luck@intel.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Anton Vorontsov <anton@enomsg.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Colin Cross <ccross@android.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, May 10, 2020 at 01:24:18PM -0700, Kees Cook wrote:
>   pstore/ram: Move dump_oops to end of module_param list
>   pstore/platform: Switch pstore_info::name to const
>   pstore/platform: Move module params after declarations
>   pstore/platform: Use backend name for console registration
>   pstore/ram: Refactor ftrace buffer merging
>   pstore/ftrace: Provide ftrace log merging routine
>   printk: Introduce kmsg_dump_reason_str()

For those following along, I've added these to for-next/pstore, as
they're all prep patches for the rest of this series.

-- 
Kees Cook

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
