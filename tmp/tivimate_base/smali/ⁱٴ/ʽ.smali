.class public abstract Lⁱٴ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lˊᐧ/ʼˎ;

.field public static final ˈ:Lˊᐧ/ʼˎ;

.field public static final ˑﹳ:Lˊᐧ/ʼˎ;

.field public static final ⁱˊ:Lˊᐧ/ʼˎ;

.field public static final ﹳٴ:Lˊᐧ/ʼˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "\\"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "/\\"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lⁱٴ/ʽ;->ʽ:Lˊᐧ/ʼˎ;

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lⁱٴ/ʽ;->ˈ:Lˊᐧ/ʼˎ;

    new-instance v0, Lˊᐧ/ʼˎ;

    sget-object v1, Lﹶˑ/ﹳٴ;->ﹳٴ:Ljava/nio/charset/Charset;

    const-string v2, ".."

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʼˎ;-><init>([B)V

    iput-object v2, v0, Lˊᐧ/ʼˎ;->ʽʽ:Ljava/lang/String;

    sput-object v0, Lⁱٴ/ʽ;->ˑﹳ:Lˊᐧ/ʼˎ;

    return-void
.end method

.method public static final ʽ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʼˎ;
    .locals 3

    .prologue
    iget-object v0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    sget-object v1, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-static {v0, v1}, Lˊᐧ/ʼˎ;->ﾞᴵ(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    sget-object v0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-static {p0, v0}, Lˊᐧ/ʼˎ;->ﾞᴵ(Lˊᐧ/ʼˎ;Lˊᐧ/ʼˎ;)I

    move-result p0

    if-eq p0, v2, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final ˈ(Lˊᐧ/ﾞᴵ;Z)Lˊᐧ/ʽﹳ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Lˊᐧ/ﾞᴵ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0, v5}, Lˊᐧ/ﾞᴵ;->ˏי(Lˊᐧ/ʼˎ;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0, v5}, Lˊᐧ/ﾞᴵ;->ˏי(Lˊᐧ/ʼˎ;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v4, v6, :cond_1

    invoke-static {v2, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v8, -0x1

    sget-object v10, Lⁱٴ/ʽ;->ʽ:Lˊᐧ/ʼˎ;

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v1, v2}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    invoke-virtual {v2}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lˊᐧ/ʼˎ;->ᵔﹳ(Lˊᐧ/ﾞᴵ;I)V

    goto :goto_2

    :cond_2
    if-lez v4, :cond_3

    invoke-virtual {v1, v2}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    :goto_2
    move-wide v15, v8

    goto :goto_5

    :cond_3
    invoke-virtual {v0, v10, v11, v12}, Lˊᐧ/ﾞᴵ;->ᴵˑ(Lˊᐧ/ʼˎ;J)J

    move-result-wide v13

    if-nez v2, :cond_5

    cmp-long v2, v13, v8

    if-nez v2, :cond_4

    sget-object v2, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v2}, Lⁱٴ/ʽ;->ﾞᴵ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v2

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v13, v14}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v2

    invoke-static {v2}, Lⁱٴ/ʽ;->ˑﹳ(B)Lˊᐧ/ʼˎ;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-static {v2, v5}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v4, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    move-wide v15, v4

    const-wide/16 v3, 0x2

    cmp-long v5, v15, v3

    if-gez v5, :cond_7

    goto :goto_2

    :cond_7
    move-wide v15, v8

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v5

    const/16 v8, 0x3a

    if-eq v5, v8, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v11, v12}, Lˊᐧ/ﾞᴵ;->ᵎˊ(J)B

    move-result v5

    int-to-char v5, v5

    const/16 v8, 0x61

    if-gt v8, v5, :cond_9

    const/16 v8, 0x7b

    if-ge v5, v8, :cond_9

    goto :goto_4

    :cond_9
    const/16 v8, 0x41

    if-gt v8, v5, :cond_b

    const/16 v8, 0x5b

    if-ge v5, v8, :cond_b

    :goto_4
    cmp-long v5, v13, v3

    if-nez v5, :cond_a

    const-wide/16 v3, 0x3

    invoke-virtual {v1, v0, v3, v4}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v0, v3, v4}, Lˊᐧ/ﾞᴵ;->ᵔי(Lˊᐧ/ﾞᴵ;J)V

    :cond_b
    :goto_5
    iget-wide v3, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_c

    move v3, v7

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    :goto_7
    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->ᵎⁱ()Z

    move-result v5

    sget-object v8, Lⁱٴ/ʽ;->ˈ:Lˊᐧ/ʼˎ;

    if-nez v5, :cond_15

    invoke-virtual {v0, v10, v11, v12}, Lˊᐧ/ﾞᴵ;->ᴵˑ(Lˊᐧ/ʼˎ;J)J

    move-result-wide v13

    cmp-long v5, v13, v15

    if-nez v5, :cond_e

    iget-wide v13, v0, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v0, v13, v14}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object v5

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v13, v14}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object v5

    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readByte()B

    :goto_8
    sget-object v9, Lⁱٴ/ʽ;->ˑﹳ:Lˊᐧ/ʼˎ;

    invoke-virtual {v5, v9}, Lˊᐧ/ʼˎ;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_f
    if-eqz p1, :cond_13

    if-nez v3, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {v4}, Lﹶˈ/ˆʾ;->ـᵎ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v9}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v6, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v7, :cond_d

    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_7

    :cond_12
    invoke-static {v4}, Lﹶˈ/ٴﹶ;->ˉـ(Ljava/util/List;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    :goto_9
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_14
    invoke-virtual {v5, v8}, Lˊᐧ/ʼˎ;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    sget-object v8, Lˊᐧ/ʼˎ;->ˈٴ:Lˊᐧ/ʼˎ;

    invoke-virtual {v5, v8}, Lˊᐧ/ʼˎ;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_17

    if-lez v3, :cond_16

    invoke-virtual {v1, v2}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    :cond_16
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˊᐧ/ʼˎ;

    invoke-virtual {v1, v5}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_17
    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    cmp-long v0, v2, v11

    if-nez v0, :cond_18

    invoke-virtual {v1, v8}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    :cond_18
    new-instance v0, Lˊᐧ/ʽﹳ;

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    invoke-virtual {v1, v2, v3}, Lˊᐧ/ﾞᴵ;->יـ(J)Lˊᐧ/ʼˎ;

    move-result-object v1

    invoke-direct {v0, v1}, Lˊᐧ/ʽﹳ;-><init>(Lˊᐧ/ʼˎ;)V

    return-object v0

    :cond_19
    :goto_b
    invoke-virtual {v0}, Lˊᐧ/ﾞᴵ;->readByte()B

    move-result v3

    if-nez v2, :cond_1a

    invoke-static {v3}, Lⁱٴ/ʽ;->ˑﹳ(B)Lˊᐧ/ʼˎ;

    move-result-object v2

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static final ˑﹳ(B)Lˊᐧ/ʼˎ;
    .locals 2

    .prologue
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_0

    sget-object p0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {p0, v1}, Lᐧـ/ˈ;->ˉˆ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    return-object p0
.end method

.method public static final ⁱˊ(Lˊᐧ/ʽﹳ;Lˊᐧ/ʽﹳ;Z)Lˊᐧ/ʽﹳ;
    .locals 6

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lⁱٴ/ʽ;->ﹳٴ(Lˊᐧ/ʽﹳ;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lˊᐧ/ʽﹳ;->ﾞᴵ()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Lⁱٴ/ʽ;->ʽ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʼˎ;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lⁱٴ/ʽ;->ʽ(Lˊᐧ/ʽﹳ;)Lˊᐧ/ʼˎ;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-static {v0}, Lⁱٴ/ʽ;->ﾞᴵ(Ljava/lang/String;)Lˊᐧ/ʼˎ;

    move-result-object v0

    :cond_2
    new-instance v1, Lˊᐧ/ﾞᴵ;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1, p0}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    iget-wide v2, v1, Lˊᐧ/ﾞᴵ;->ᴵˊ:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    invoke-virtual {v1, v0}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    :cond_3
    iget-object p0, p1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1, p0}, Lˊᐧ/ﾞᴵ;->ᐧﹶ(Lˊᐧ/ʼˎ;)V

    invoke-static {v1, p2}, Lⁱٴ/ʽ;->ˈ(Lˊᐧ/ﾞᴵ;Z)Lˊᐧ/ʽﹳ;

    move-result-object p0

    return-object p0
.end method

.method public static final ﹳٴ(Lˊᐧ/ʽﹳ;)I
    .locals 6

    .prologue
    iget-object p0, p0, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    const/16 v3, 0x2f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    const/16 v3, 0x5c

    const/4 v5, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v0

    if-le v0, v5, :cond_3

    invoke-virtual {p0, v4}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v0

    if-ne v0, v3, :cond_3

    sget-object v0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ᵎﹶ()[B

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lˊᐧ/ʼˎ;->ˑﹳ(I[B)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result p0

    return p0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v4

    :cond_4
    invoke-virtual {p0}, Lˊᐧ/ʼˎ;->ʽ()I

    move-result v2

    if-le v2, v5, :cond_6

    invoke-virtual {p0, v4}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v5}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result v2

    if-ne v2, v3, :cond_6

    invoke-virtual {p0, v0}, Lˊᐧ/ʼˎ;->ᵔᵢ(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_5

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x41

    if-gt v0, p0, :cond_6

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_6

    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public static final ﾞᴵ(Ljava/lang/String;)Lˊᐧ/ʼˎ;
    .locals 2

    .prologue
    const-string v0, "/"

    invoke-static {p0, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lⁱٴ/ʽ;->ﹳٴ:Lˊᐧ/ʼˎ;

    return-object p0

    :cond_0
    const-string v0, "\\"

    invoke-static {p0, v0}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lⁱٴ/ʽ;->ⁱˊ:Lˊᐧ/ʼˎ;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
