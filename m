Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 102421AF547
	for <lists+linux-mtd@lfdr.de>; Sun, 19 Apr 2020 00:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egbJz1VD5zHBRI5z+Y7wwiKCQT2lLKBA8oygJ8GUhF8=; b=KUThrAmHbWkuDp
	zmOuDHxWQEF7ZF0vfufPxPPmebyuS+nQRo+6Hla6nblFU7e1ns4/BiUEmN9qaPwYBQeZ4E+gLE5kN
	OZwh5s4CEgca0bOKdiwZjmpnZJ4cIeTZEhNJYjAB9gEZwBgNbJH8UU8e5GFZg+O4n8OSo5KulgN9S
	brKBP06+JAbuyXob7s3N4GK6SRehWAhPpUWQsC0asUlUwEt+B8MrQk20bGtGmCQIg3tl2FPC449v9
	IFxM63S/HcgMbqIiKV62iXmqUVTSKuf/++v7RQ0Dvf43Z9LPPpNFY/Gnl3CcJtKEHot7UgnZ8pY6S
	71U0KAz2M2c87/JRnbog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPvd4-0002uM-99; Sat, 18 Apr 2020 22:08:02 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPvcx-0002sy-4F
 for linux-mtd@lists.infradead.org; Sat, 18 Apr 2020 22:07:56 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p13so2828445qvt.12
 for <linux-mtd@lists.infradead.org>; Sat, 18 Apr 2020 15:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=XY8qLZISPOcN//yeyj5gvtwVqNkO/KJremmxQQ/PxhU=;
 b=uhEjz/JYXlQ5soYgGV+G3UINJQxebSkS/B6BsOvRw45NmtSXTUXyeoU0mma/0XBtdx
 x9CAjp7js0ak55k0VEI1F1ZJS1CZHRtbObfRq99CovGIoVVtmn428aPVolSOWBa9pK1C
 vnttJUL84g3TsA03k+bJgeH0gDfaqgdb7MKcpC42leXhI5e+pMQwEwYAaQG7NKYRcXzw
 Yj3HWKd4bL+OkfcXxVZoXTTOZLzXKimqLpw0ctYIF15TUJNl1OhaUxtNRYbVubnscDvh
 EBHW7O4bpE+UjK53NViyR68ejeBKj/k2DyetKPNyXtfcxAKl2hkl+74RDTohCKLaGZU1
 BCCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=XY8qLZISPOcN//yeyj5gvtwVqNkO/KJremmxQQ/PxhU=;
 b=mxUfkvhW4wc+DuC6XJ7ave9iOHmJZ6S7o2UjVlWNr2q0+mSOC9cnSJ6LIpKyRM4qYE
 ZbBEzVkwu/t7abUsPKTOa4F81DQswWwvYokZtGX8U1r1u8tph8AhgMEyeLAEA4s8wcXg
 eNIkj1BYX91q52poiUgnlaf2kRNk8rb4Xq9XjpTu1mShRyF6Iaic7pzJatxV2P+NfrVA
 h8iaQaTRb4neAaO694OTY5WaoGmv1JqP0Y2m1uj9qpwrKy/fbC7EbzsRNDky5dyfAk0L
 QOeObD0qEN/JUOMZ5eyYlW342yShgMG0cPKEnglBKk3mKxUdRUTN/YFGn6UZR8KHSYZ/
 8ugw==
X-Gm-Message-State: AGi0PuZhhRVtxjciJoFyY/XWLjwOUKEfkJO6KQJhAivhmqN4oO30xso+
 m+vGywKE1w/L5O/vHLAwu9iJY4nCTOmR12nJCkw=
X-Google-Smtp-Source: APiQypKd5HA6RsstviCnhCv4RHqeSdKQtH85hcJtUaWmAxRjhJqXIh062EXRoeqqY1rUiHobNBM7KcawxKeHL0W1gB4=
X-Received: by 2002:a05:6214:150f:: with SMTP id
 e15mr8545120qvy.18.1587247673423; 
 Sat, 18 Apr 2020 15:07:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:f86:0:0:0:0:0 with HTTP;
 Sat, 18 Apr 2020 15:07:53 -0700 (PDT)
From: Mr Kabiru Wahid <kabiruwahid111@gmail.com>
Date: Sat, 18 Apr 2020 22:07:53 +0000
X-Google-Sender-Auth: KRd8LvkXnhk-K5uoTe4Zl6k8sjA
Message-ID: <CAM5G+8xiYwGomhViNUoUgJGcwc5Cyws5Fph5qKUhn-qB+=YY1A@mail.gmail.com>
Subject: Hello Dear Friend!
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_150755_192003_F5DDEAC4 
X-CRM114-Status: UNSURE (  -4.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [mr.ibrrahim.hassan112[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mr.ibrrahim.hassan112[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [kabiruwahid199[at]gmail.com]
 0.9 URG_BIZ                BODY: Contains urgent matter
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
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
Reply-To: kabiruwahid199@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Dear Sir,  I came across your e-mail contact prior a private search
while in need of your assistance, I have investment funds worth
million of dollars and i need a trusted investment Manager/Partner, If
you are willing to handle this project on my behalf kindly reply
urgent to enable me provide you more information please this is not a
spam, its a real business that will benefit both of us your urgent
reply will be appreciated i will explain to you on how the business
will be executed! kabiruwahid111@gmail.com.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
