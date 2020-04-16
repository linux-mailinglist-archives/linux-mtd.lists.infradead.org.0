Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804471ACB07
	for <lists+linux-mtd@lfdr.de>; Thu, 16 Apr 2020 17:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zGKiAmB2/qehyR+LzKQ+Yil5xishPljBhAV5STJqEEM=; b=izJ
	4WDzs0oKnS+rkGy3+5rSYilMTrEyXZ+Hz9372xiu5DLsIEMFjMBa0Mc8aW/diSdYHeQqwijsDFJfm
	pxyt0i0uMalvNuhP47wtd2NW+uVPURthcDk++Z3rhf9BKTTqGMz9hDDBh/uCG23EZMhNrtR3vN4lH
	CgCgCa25w1X8KQzpqYzHAw4NjmuINQMmJUnDjdYUy6HCQzvOo+m+szJyb92eGU7aVQlWRYdtjfWhj
	+4Djz3SqUvNvL3aAotQFM4z7XTlikrMR+b8MqZcPVRc0XwCmAAw7Bc0hFOU0AC8yRhkZQ8Z+dDA13
	RrxfMijUf8xjYEqCVpuUITQO5gLPi2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6hb-000873-4F; Thu, 16 Apr 2020 15:45:19 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6hT-0006sz-1O
 for linux-mtd@lists.infradead.org; Thu, 16 Apr 2020 15:45:12 +0000
Received: by mail-io1-xd34.google.com with SMTP id b12so21467356ion.8
 for <linux-mtd@lists.infradead.org>; Thu, 16 Apr 2020 08:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Zu6/BaNZDVgKF+RS0/LZnF2fl8mMzQ5ttsphanChzWg=;
 b=Mq3ssRHnaGa6Sg8BQFjhSzhdMNkImkUMm/QP93J7AzK+9GDlBq5O/9VQxK/HzUCsoa
 Eciz2+9rxhqiPaL9x+7lILMHglMUCWx+Y3Q7BLbVz+2j3LsYeK3dbLKBqMfXqp6JNzGw
 s8ba0ebjCmRflGmRnqNDZ5Ky4xzrAQgT32Hp9CBFFOprU7pJoTxM3d0dva7BT2DY3dxz
 QgSuYzsLdjjt8/0eCcRL0a3+hN0Y45GUdw6rshwkm9Y06C06H/zKPz1/Uf/rXAIuHFWq
 QNcRwyfswcoUh3+/AkSPVe8Mn1Zorv+KuTP57X0A3bCWPua+GwflfS7YTesSsJVRDBSX
 0exQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Zu6/BaNZDVgKF+RS0/LZnF2fl8mMzQ5ttsphanChzWg=;
 b=tluhvvRqgs2fNpZK7FYKvk+ypuziJQ4QJ3UkrIhWXxUQm9Z2Ct7kqmEj/sArobU/nz
 3lHYAj5GHq88IgfoH5giVS4cUoC75oIDxDv+oWMM8E1MMSvKa4ayWFC3/YH5++C3EZyg
 6Ny0g56TVeTWxYg+KG0j473q4rwhuBSuwjZ0l5TwT5oL62rTvYfdKYiUCrSA5T1tht/y
 eDOcERDdMwae2DCubytj+nnSQ2LlNOtjgnkDrtikCN2ndFgZjCgk0Q55tO7OGDwuNlz9
 6rVm4Eav79S8wmjvQ7d9XXTq9ZZwI5nhIcRb/mZTKOM9Ehmnj0yJYrYINokzJU6uQmY4
 NMEA==
X-Gm-Message-State: AGi0PuYuUaOu7WAq2IiyvviuGGS40qPn6K3DjWFidiShZA9tf3ZhzT4P
 nr5RvjA0J1wIz/UBN1UT57I0I36SfNl9qC/ro7PYIxw490c=
X-Google-Smtp-Source: APiQypIea8rsD9u1jAKPuRascNi68BTBZ0WL0jdwYplE61SQQzVIAxKV/Gfss7vjLZiADzaX0HNPhLuYvBqqrEmYAZU=
X-Received: by 2002:a5d:8744:: with SMTP id k4mr9050027iol.62.1587051907550;
 Thu, 16 Apr 2020 08:45:07 -0700 (PDT)
MIME-Version: 1.0
From: Ron Minnich <rminnich@google.com>
Date: Thu, 16 Apr 2020 08:44:56 -0700
Message-ID: <CAPAv03NygZR1vOCHrhVcSotkCHKVxxwe0Y6Bpz9_LLKFhqS0bQ@mail.gmail.com>
Subject: question on spi-nor/controllers/: nothing builds it?
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_084511_122992_67B1C4C1 
X-CRM114-Status: UNSURE (   5.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

I'm looking at 5.7.0-rc1, and I notice there is now a
drivers/mtd/spi-nor/controllers Makefile, but for the life of me, I
can't find anything that builds what is in there.

Am I missing something? When I enable CONFIG_SPI_INTEL_SPI_PLATFORM it
does not get compiled.

thanks

ron

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
