Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CAE37BF3
	for <lists+linux-mtd@lfdr.de>; Thu,  6 Jun 2019 20:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u4sBBY/yuNclKyx8Ya+Whd9gjZgyH0ih12VyBeIwgEM=; b=IXmHZdTaenrmsD
	Tyq00DkvmHeRAh9jqbq1TqyzAYEqdDlmrgzVlzxG4rzPKE+S1ZsPZXXOxgkROhawHjVvR3xqv/y4z
	Yq4aECrJ0Yur8HXutx8DSsOOb5N+u3awE1XeccmDYEiASUk6kYXkBJafwWn//0JQUPTFsO9+OUEsE
	5CszwIzjjsY05LvEX3JrW3o8/tYO90Dq2O3vouncETMvik0O5/vMkVjoZucL2H8XFqWoIFJU6RqZp
	Z70r07wcVb2bYVmcOFxhIPGX6j+4pqtnZfD1qSt1W7fOjxvd4NbPoUB5jCpBrK4qhbhg7TrbiFEfM
	qmH5AOev+8cqVPq7LEZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwtF-0002Bg-Pv; Thu, 06 Jun 2019 18:13:29 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwt8-0002BI-Rl
 for linux-mtd@lists.infradead.org; Thu, 06 Jun 2019 18:13:24 +0000
Received: by mail-wm1-x334.google.com with SMTP id h19so2398508wme.0
 for <linux-mtd@lists.infradead.org>; Thu, 06 Jun 2019 11:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Yg15pFfsPUo9BUPFku06Ln0yRIYAFiuknEaF7+NO5fE=;
 b=UanY371ELgzk86KG5aE+TxJdyfMmmOW2/Vm9u5DU+4XQxU+xyMusXL2Evbq90fEgCA
 uLX6Hkje+scDerfotkuI22x49IsEjPFETixPlsazR/FFWfbBL48X7gUjunKYFLcxJaDm
 3SzAgiMCk4ENXH2LY/N3DMx7iH+ZVaAzpJ66UnxuPSdYBqwnHP0OkEIhL8axWCdafMIr
 M1qacxpThBgXPuqJ/tdC0aXRMsupYYFANCD2pqWS2iAGfT+w0sbkx9GAjn8uV4oKwViX
 HLUFSX3QZkq1+yjjJO5wgayRowvJcJ/sGygID6BugySXKEMgL3phQCNh5sVouMCfgl+Q
 tqqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Yg15pFfsPUo9BUPFku06Ln0yRIYAFiuknEaF7+NO5fE=;
 b=lC8wh4wZDOau9BedbgR3ZUHpHAFn6Ip/vvVm3B1V4F58balHkHSAQj71LPlhGtlXOt
 /vqJb3VyDEw8A7y6rEL3pyWo98zPvauHMCiIWRUh2CX97vs9e8l1gA+mr+SMbjB7AVhe
 pXFUzwQcVA3dUvGKOURAO+j4XKkQHOLF6ToKzZk8A5/7YWDWK0ns6NSQ5imhCWsuhbHn
 VVfGL2H2K8hxd4Xz1WJ/dK+Au6VZqt8GW+I7dsGmESOq86RyxnYFbVTxju2UoCpZi0eC
 G0t2H5NZaPNeoTz58zhDYvwwB60M4PpMQYS+wF/9x0TV76xn6NnO3/GObNHz7PqUMmOe
 U0jQ==
X-Gm-Message-State: APjAAAXWlCzn0aQy3xAVWyde3379r5g6qZw4b+9bSOpPXR2tYbqRQuXY
 5tJ/khyXj22aKZuGxZawv7fQAYc0CyHBS3BUuFDuQA==
X-Google-Smtp-Source: APXvYqxyIOf4fQxhxOcokwNIhOyxRZdBL9LgO9WNFdH/LIRuM9PdniXAXSN1GLfKSNMee+ibMBy9XFoBSl4s3tXYIKs=
X-Received: by 2002:a1c:23c4:: with SMTP id j187mr902987wmj.176.1559844798762; 
 Thu, 06 Jun 2019 11:13:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190606121037.40a1cc5e@sergmir.emcraft.com>
 <CAFLxGvx4iqpU8pq8CPwah9M+Qa2YkpXEiSmndeVy2mLadNQn_g@mail.gmail.com>
 <20190606210803.481cbc5d@sergmir.emcraft.com>
In-Reply-To: <20190606210803.481cbc5d@sergmir.emcraft.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 6 Jun 2019 20:13:07 +0200
Message-ID: <CAFLxGvy1BTuLkcn=7N=FG_q5cBgj5L1YzyhiakVFewYPyr6dzA@mail.gmail.com>
Subject: Re: UBIFS: file data corruption during the power cut-off test
To: Sergei Poselenov <sposelenov@emcraft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_111322_899882_6E932CDC 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
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

On Thu, Jun 6, 2019 at 8:08 PM Sergei Poselenov <sposelenov@emcraft.com> wrote:
> This is understood. However, on the file length that is written to the partition, I'd expect that the file content will be the same as in the original file. This is not so.
> Is it expected, or is it a deficiency of UBI?

Please show in detail what you are doing, on syscall level, and what
the expected output is.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
