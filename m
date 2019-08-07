Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50528520D
	for <lists+linux-mtd@lfdr.de>; Wed,  7 Aug 2019 19:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SlOW8rvC01uY4ehKGe5n5M7kMLBbCrFKSWFB04nDZFk=; b=KaIcL8+jM9hsFL
	AGb2RzZorhjDgEgsRgya96AJZ6+o8pIIRhHAltckCT6D32hzXN/6oPdhJMo27gD2qS4P/3xGIAWCg
	ZbzxVdVNNOM0TMQIfqFCbs3DD0PXW27X4aM8bTAym7nXeehBEgMaMSFSDife9yRyazPmg0nA55TZg
	uhbTiwAZQ4R+YQ0AC5+RI9nuL35OQpdvFYyx5h4K51fDHCYT2c2lL4GlJWWqTZit8bIJE0zo/GWD9
	FZIliI9+mn0XJIaTW6Y5ZiqKXphewhdrWg+q9URQPZ2c13KgMkbCuihW1n17m84WfdcosfYyV60Jx
	k3nTwzqanytHsgienkKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPjG-0006Wk-Gb; Wed, 07 Aug 2019 17:28:02 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPj8-0006WS-Re
 for linux-mtd@lists.infradead.org; Wed, 07 Aug 2019 17:27:56 +0000
Received: by mail-wm1-x32c.google.com with SMTP id g67so845276wme.1
 for <linux-mtd@lists.infradead.org>; Wed, 07 Aug 2019 10:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version;
 bh=SlWMD/mY8njctmHF5gyM6BBV0H8KZOr3+hM1c07UsBg=;
 b=XgqsCZZw5IuVsAvHoP34Ygn49UuZabbtfFXRwRFYjcFiWsylHvaRY/3+0pba9KhPok
 AeIalZT2HQjTrjL2zTSRbR/I78V+PQbBgGfu1UAZeDX741R0QS9nVN9hSRvdHk1rZcy9
 bDYgrxaiOs3Fpji2Y9MbrVwWVOm4to0ME8w9T0lU33x/ndDrby0msdA4cc1jvuRnBG1A
 WgxARfQnls/3FyhjOXM001m51OpoudCFskPFbNianw092FZjRlUzHVNcrHwUKlDt3chQ
 +2UOp3zSDVGHj8PiXZxmdNr6F9ZjBvHGV4OZ/mzJEb+jKVRDs8shCSFvrmiOboY37U8B
 JpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
 bh=SlWMD/mY8njctmHF5gyM6BBV0H8KZOr3+hM1c07UsBg=;
 b=KoqIH+nnzW4Qmrih0XAq7WVhpYlfTP8yUgcNumaMHuZJHxvv2fUwaP08AozFusI5b1
 /eNCGOcoOQXAXqyvFG1hClh6cbZHISc17i7an0YoVNqzkarBH8fznsZ/NAhbQpEI2RHB
 M+E8yw7VKlQCeRIQr40dQPzoDy8yBlbDj7+VXxz3qnQy9pG1Yc7D/u6v72vLnb6Rdt+v
 9nCry+aJDsX6i8mh7t9NleOByvX/w+dhalBGeoVUcOJsN4PkrON84PA9fvBOw9t0+KL4
 +S42EvehzTWLjRFDdoILm3WBYAe00UzIoQdJWRPl8292MULdk/dO4Fw2FfBmThkVgCNc
 i2uA==
X-Gm-Message-State: APjAAAUmAIzCvhqD15ldR6dmO0oru+Qk27XEqs8DSMwY822HN5DAHRLa
 ghCtdmmlRN3MwSB7b2CguuBC6rbX
X-Google-Smtp-Source: APXvYqwcOMXA8Eq0PtPvjJJ6v7b5cqb4kPZeOZ0B4/eSzYv41M1HfOexv101HOJZB4RQ/raWBi8dxQ==
X-Received: by 2002:a7b:cd84:: with SMTP id y4mr966579wmj.62.1565198873145;
 Wed, 07 Aug 2019 10:27:53 -0700 (PDT)
Received: from localhost.localdomain
 (host235-138-dynamic.251-95-r.retail.telecomitalia.it. [95.251.138.235])
 by smtp.gmail.com with ESMTPSA id o20sm232353471wrh.8.2019.08.07.10.27.52
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 10:27:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 7eefdcb8
 for <linux-mtd@lists.infradead.org>;
 Wed, 7 Aug 2019 17:27:49 +0000 (UTC)
Date: Wed, 7 Aug 2019 19:27:49 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: linux-mtd@lists.infradead.org
Subject: [mtdblock] reading regions where %512 != 0
Message-ID: <alpine.LNX.2.21.99999.352.1908071924030.11090@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_102754_921469_CCA8408B 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hello guys!

first of all - thank you for your great work!

I've been experimenting an issue with OpenWRt on a TP-Link Archer C60 V2 device, where an mtd region has been defined so that it's not 512-bytes aligned:

mac: partition@1fb00 {
  	label = "mac";
  	reg = <0x01fb00 0x000500>;
  	read-only;
};

So the region is 1280 bytes long; still reading from the exported mtdblock device will results in a 1024 bytes read.
This prevents users from making proper backups of flash regions. I don't know how many instances of this exist in the OpenWRt tree right now, but it's not clear wether we should fix this issue in the mtdblock or defining regions differently, changing their sizes.
Any help, suggestions or ideas very welcome and apreciated.

Thank you very much,
Enrico



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
