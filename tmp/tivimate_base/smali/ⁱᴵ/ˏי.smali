.class public final Lⁱᴵ/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lⁱᴵ/ᵔﹳ;


# static fields
.field public static final ˈٴ:Lᵔﹶ/ˉʿ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Ljava/util/UUID;

.field public final ᴵˊ:Landroid/media/MediaDrm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᵔﹶ/ˉʿ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lᵔﹶ/ˉʿ;-><init>(I)V

    sput-object v0, Lⁱᴵ/ˏי;->ˈٴ:Lᵔﹶ/ˉʿ;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 5

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Use C.CLEARKEY_UUID instead"

    invoke-static {v3, v1}, Lᐧˎ/ﹳٴ;->ʽ(Ljava/lang/String;Z)V

    iput-object p1, p0, Lⁱᴵ/ˏי;->ʾˋ:Ljava/util/UUID;

    new-instance v1, Landroid/media/MediaDrm;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_0

    sget-object v3, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    iput v2, p0, Lⁱᴵ/ˏי;->ʽʽ:I

    sget-object v0, Lʽⁱ/ᵔᵢ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ASUS_Z00AD"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "securityLevel"

    const-string v0, "L3"

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final ʼˎ([B)V
    .locals 1

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final ʼᐧ([BLjava/util/List;ILjava/util/HashMap;)Lⁱᴵ/ˉˆ;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v3, "<LA_URL>https://x</LA_URL>"

    iget-object v4, v0, Lⁱᴵ/ˏי;->ʾˋ:Ljava/util/UUID;

    const/4 v5, 0x0

    if-eqz v1, :cond_13

    sget-object v6, Lʽⁱ/ᵔᵢ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v6, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽⁱ/ˉʿ;

    goto/16 :goto_4

    :cond_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v6, v10, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lʽⁱ/ˉʿ;

    move v10, v8

    move v11, v10

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lʽⁱ/ˉʿ;

    iget-object v13, v12, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v12, Lʽⁱ/ˉʿ;->ˈٴ:Ljava/lang/String;

    iget-object v15, v6, Lʽⁱ/ˉʿ;->ˈٴ:Ljava/lang/String;

    invoke-static {v14, v15}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v12, v12, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    iget-object v14, v6, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    invoke-static {v12, v14}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v13}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object v12

    if-eqz v12, :cond_3

    array-length v12, v13

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    new-array v10, v11, [B

    move v11, v8

    move v12, v11

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lʽⁱ/ˉʿ;

    iget-object v13, v13, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v14, v13

    invoke-static {v13, v8, v10, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lʽⁱ/ˉʿ;

    iget-object v11, v6, Lʽⁱ/ˉʿ;->ᴵˊ:Ljava/util/UUID;

    iget-object v12, v6, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    iget-object v6, v6, Lʽⁱ/ˉʿ;->ˈٴ:Ljava/lang/String;

    invoke-direct {v1, v11, v12, v6, v10}, Lʽⁱ/ˉʿ;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_4

    :cond_3
    move v6, v8

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lʽⁱ/ˉʿ;

    iget-object v11, v10, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object v11

    if-nez v11, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    iget v11, v11, Lʻʽ/ʼˎ;->ⁱˊ:I

    :goto_3
    if-ne v11, v9, :cond_5

    move-object v1, v10

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lʽⁱ/ˉʿ;

    :goto_4
    iget-object v6, v1, Lʽⁱ/ˉʿ;->ᴵᵔ:[B

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lʽⁱ/ᵔᵢ;->ˑﹳ:Ljava/util/UUID;

    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {v4, v6}, Lʻˆ/יـ;->ٴﹶ(Ljava/util/UUID;[B)[B

    move-result-object v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    move-object v6, v11

    :goto_5
    new-instance v11, Lᐧˎ/ﹳᐧ;

    invoke-direct {v11, v6}, Lᐧˎ/ﹳᐧ;-><init>([B)V

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ˉʿ()I

    move-result v12

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ˉˆ()S

    move-result v13

    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ˉˆ()S

    move-result v14

    const-string v15, "FrameworkMediaDrm"

    if-ne v13, v9, :cond_b

    if-eq v14, v9, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Lᐧˎ/ﹳᐧ;->ˉˆ()S

    move-result v9

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v9, v2}, Lᐧˎ/ﹳᐧ;->ـˆ(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "<LA_URL>"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    const-string v6, "</DATA>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_a

    const-string v7, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v15, v7}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v12, v12, 0x34

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v9, v13

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v9, v14

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    int-to-short v9, v9

    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_7

    :cond_b
    :goto_6
    const-string v2, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v15, v2}, Lᐧˎ/ﹳٴ;->ʽﹳ(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static {v10, v5, v6}, Lʻˆ/יـ;->ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v6

    :cond_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    if-ge v2, v5, :cond_d

    sget-object v5, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v8, 0x1

    :cond_d
    if-eqz v8, :cond_e

    invoke-static {v6}, Lʻˆ/יـ;->ˆʾ([B)Lʻʽ/ʼˎ;

    move-result-object v5

    if-eqz v5, :cond_e

    sget-object v6, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    iget-object v7, v5, Lʻʽ/ʼˎ;->ˑﹳ:Ljava/lang/Object;

    check-cast v7, [Ljava/util/UUID;

    iget-object v5, v5, Lʻʽ/ʼˎ;->ˈ:Ljava/lang/Object;

    check-cast v5, [B

    invoke-static {v6, v7, v5}, Lʻˆ/יـ;->ﹳٴ(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v6

    :cond_e
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "Amazon"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "AFTB"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "AFTS"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "AFTM"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "AFTT"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    invoke-static {v4, v6}, Lʻˆ/יـ;->ٴﹶ(Ljava/util/UUID;[B)[B

    move-result-object v5

    if-eqz v5, :cond_10

    goto :goto_8

    :cond_10
    move-object v5, v6

    :goto_8
    iget-object v6, v1, Lʽⁱ/ˉʿ;->ˈٴ:Ljava/lang/String;

    const/16 v7, 0x1a

    if-ge v2, v7, :cond_12

    sget-object v2, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "video/mp4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "audio/mp4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const-string v2, "cenc"

    goto :goto_9

    :cond_12
    move-object v2, v6

    :goto_9
    move-object v9, v2

    move-object v8, v5

    move-object v5, v1

    goto :goto_a

    :cond_13
    move-object v8, v5

    move-object v9, v8

    :goto_a
    iget-object v6, v0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    move-object/from16 v7, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v2

    sget-object v6, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v2}, Lᐧˎ/ʼʼ;->ᵔﹳ([B)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2b

    const/16 v6, 0x2d

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    const/16 v6, 0x5f

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    :cond_15
    :goto_b
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, ""

    if-eqz v3, :cond_17

    :cond_16
    :goto_c
    move-object v4, v6

    goto :goto_d

    :cond_17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-lt v3, v7, :cond_18

    const-string v3, "https://default.url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "version"

    iget-object v7, v0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v7, v3}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "1.2"

    invoke-static {v3, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    const-string v7, "aidl-1"

    invoke-static {v3, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_c

    :cond_18
    :goto_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v5, :cond_19

    iget-object v3, v5, Lʽⁱ/ˉʿ;->ʽʽ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    move-object v4, v3

    :cond_19
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    new-instance v1, Lⁱᴵ/ˉˆ;

    invoke-direct {v1, v4, v2}, Lⁱᴵ/ˉˆ;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final ʽ([B[B)V
    .locals 1

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final ʽﹳ()[B
    .locals 1

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public final ˆʾ([B[B)[B
    .locals 9

    .prologue
    sget-object v0, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    iget-object v1, p0, Lⁱᴵ/ˏי;->ʾˋ:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lᐧˎ/ʼʼ;->ᵔﹳ([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"keys\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keys"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "{\"k\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "k"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    const/16 v8, 0x5f

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kid\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kty\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kty"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p2}, Lᐧˎ/ʼʼ;->ᵔﹳ([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to adjust response data: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearKeyUtil"

    invoke-static {v2, v1, v0}, Lᐧˎ/ﹳٴ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final ˉʿ()Lⁱᴵ/ʼᐧ;
    .locals 3

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    new-instance v1, Lⁱᴵ/ʼᐧ;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lⁱᴵ/ʼᐧ;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method public final ˉˆ([B)V
    .locals 1

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final ˏי(Ljava/lang/String;[B)Z
    .locals 6

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    iget-object v3, p0, Lⁱᴵ/ˏי;->ʾˋ:Ljava/util/UUID;

    if-lt v0, v1, :cond_2

    sget-object v1, Lʽⁱ/ᵔᵢ;->ˈ:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    if-eqz v1, :cond_1

    const-string v1, "version"

    invoke-virtual {v4, v1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "v5."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "14."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "15."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "16.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v1, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v4, p2}, Landroid/media/MediaDrm;->getSecurityLevel([B)I

    move-result p2

    invoke-static {v4, p1, p2}, Lʼᵢ/ˉˆ;->ˈ(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    const/16 v5, 0x1b

    if-ge v0, v5, :cond_3

    sget-object v0, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-static {v3, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    invoke-direct {v4, v0, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Landroid/media/MediaCryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-object v1, v4

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    :goto_2
    :try_start_2
    sget-object p1, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr p1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    :cond_4
    return p1

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    :cond_5
    throw p1
.end method

.method public final ᵎﹶ([B)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔᵢ(Lᐧﹳ/ʽ;)V
    .locals 1

    new-instance v0, Lⁱᴵ/יـ;

    invoke-direct {v0, p0, p1}, Lⁱᴵ/יـ;-><init>(Lⁱᴵ/ˏי;Lᐧﹳ/ʽ;)V

    iget-object p1, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {p1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final ᵔﹳ()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final declared-synchronized ﹳٴ()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lⁱᴵ/ˏי;->ʽʽ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lⁱᴵ/ˏי;->ʽʽ:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ﹳᐧ([B)Lﹳⁱ/ﹳٴ;
    .locals 4

    .prologue
    new-instance v0, Lⁱᴵ/ﹳᐧ;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    iget-object v3, p0, Lⁱᴵ/ˏי;->ʾˋ:Ljava/util/UUID;

    if-ge v1, v2, :cond_0

    sget-object v1, Lʽⁱ/ᵔᵢ;->ʽ:Ljava/util/UUID;

    invoke-static {v3, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v3, Lʽⁱ/ᵔᵢ;->ⁱˊ:Ljava/util/UUID;

    :cond_0
    invoke-direct {v0, v3, p1}, Lⁱᴵ/ﹳᐧ;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public final ﾞʻ([BLʻʿ/יـ;)V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lⁱᴵ/ˏי;->ᴵˊ:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lʼᵢ/ˉˆ;->ﾞᴵ(Landroid/media/MediaDrm;[BLʻʿ/יـ;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "FrameworkMediaDrm"

    const-string p2, "setLogSessionId failed."

    invoke-static {p1, p2}, Lᐧˎ/ﹳٴ;->ˈٴ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
