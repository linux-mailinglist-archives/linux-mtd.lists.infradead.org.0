Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C641C8889
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 13:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MkkwXW64GVGwq/ZEbkzeWeJXOKuMK9DK2ec36AADUeY=; b=BHE
	uXzp+2S5aE3aPToatVkO2FyBOz6jNm0983bQucNpiO4k6sI2eUheW4ZUKP4Lv2pbquWCdlMyFPr+A
	gyoePluao1OaIG6+6HLK3ukTQosepyH9VkXNFr4l4dSbkkbSRpUQS4evJ/jub5szBy0nln3r87rZw
	9FnemumIza59HqHwAlxGx+FjNr1AWMSxQggJjfhnOWHRgL7QmMWHkWEyX8GBjnI2URjyM5Fh7P5oN
	DVECiijQjsDnuryE8Qby5KDQgFn7reCdk/8bT3SocLG4g351vL4R3j6Wy9Lv5TQcMkV8CyiPheoY2
	6N5Xfe1ZlxUW8ZQMDmRiju0tsQblGog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWeuG-0007jE-KI; Thu, 07 May 2020 11:41:36 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWeu7-0007i8-Vl
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 11:41:29 +0000
Received: by mail-lf1-x142.google.com with SMTP id a4so4180822lfh.12
 for <linux-mtd@lists.infradead.org>; Thu, 07 May 2020 04:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=4ERqxTrp1TLq/7SX25p/k9mnKH5wRAN7Plv0xb+8lnk=;
 b=dxH4ByWIneiMp2sDRPZYHoecfk4S9mMAEIw0WdPyW11cI8KboY5afdueYHb40A7wX3
 u+gDNxzdevtVr0PDra2PnJqMovv3bUjKGObwYw2cYTVwYbcKKD8Pz5wi8MQIQQPEg3gV
 kEkJgN4XURAvNXE+9R1ay+NYFddTwyBUg1h5mlByNdGzssj1WpgemmFtL1M7BYmbDkF8
 Eq0UuuTQp1TSrOlSnZBSiXg7y06EV9It2mvs6UmU8lBIkhuzTXI+u6f5j1Fkskc1T1j1
 x1ZXCNPHgf07RGelmD6WH4IR8EfW7gVYYsJnJ93ru/in76oWCR6LQdoE6+FNwj2Y9Ysk
 CyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4ERqxTrp1TLq/7SX25p/k9mnKH5wRAN7Plv0xb+8lnk=;
 b=qMdl9PmppOMl4FZGcNVaK8f8LqY1WNArCfY29/MhJ1Nf99H1MhzruaJ9I4vtKOmoDl
 5/aCUkvRB/awLWFdZe3Db2fLiJ7fG8Icdv9u5/Fm9NqGg+lkhNAEnbRoOO4js6V58+s4
 7C8emQshFoeI1r/MOTw5rwm9564OroQTRPoygMnVKGQRKSccQnVMeSVBK8i1YbgTMWr/
 OtGurzf/u6bnnnNIPdxOojSTQP+9wnQ1crfwErKbwfi271eG9I8m0ri6qxolWgJYF1Gr
 hYSsGZ74cN/7iHQevSGsH+tORG7rIPJWHb6sSmBlerc5a7c0QvKR5jFbYTqD3Tnn6Jx7
 MKmQ==
X-Gm-Message-State: AGi0Pubomz0RvOC0ZreH7FHFvUA/U/Swe6ZhoZoNGsE6sN8EPSYy7UwD
 MrL7/95dRHD7kyGR9XGVlYX6NSkmDMaQAo65oeE=
X-Google-Smtp-Source: APiQypJIi2VCdQoXzrehPRoiK6efGD7KqqggL3O0PQhtnA+9NXgDsTxBO4n1Kx8SZOxR/FIm5ixi4lMMCV5ows+o7qk=
X-Received: by 2002:a19:380d:: with SMTP id f13mr8435920lfa.43.1588851681846; 
 Thu, 07 May 2020 04:41:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:ad08:0:0:0:0:0 with HTTP;
 Thu, 7 May 2020 04:41:21 -0700 (PDT)
From: Cheickna Toure <metraoretk3@gmail.com>
Date: Thu, 7 May 2020 11:41:21 +0000
Message-ID: <CALi9pEjAiZ6GaZxAD-7QFLUvg9nNps+4Q2WD88jBhFqDi9d4xg@mail.gmail.com>
Subject: IMPORTANT
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_044128_060748_4C2C151F 
X-CRM114-Status: UNSURE (   1.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [metraoretk3[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [metraoretk3[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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

Hello,
I have an important and favourable information/proposal which might
interest you to know, Contact me for details, it's important
Regards,
M.Cheickna
mecheicknatoure@consultant.com

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
