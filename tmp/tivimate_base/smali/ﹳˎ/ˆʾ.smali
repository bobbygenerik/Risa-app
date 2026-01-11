.class public abstract synthetic Lﹳˎ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʽ(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ˑﹳ(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lˊʼ/ﾞʻ;
    .locals 1

    new-instance v0, Lˊʼ/ﾞʻ;

    invoke-direct {v0, p0, p1, p2}, Lˊʼ/ﾞʻ;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lˊʼ/ʽﹳ;->ⁱˊ(Lˊʼ/ﾞʻ;)V

    return-object v0
.end method

.method public static ᵎﹶ(Ljava/lang/Class;)Z
    .locals 1

    invoke-static {}, Lﾞﾞ/ⁱˊ;->ﹳٴ()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic ⁱˊ(I)J
    .locals 2

    .prologue
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const-wide/16 v0, 0x40

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x3f

    return-wide v0

    :pswitch_2
    const-wide/16 v0, 0x3e

    return-wide v0

    :pswitch_3
    const-wide/16 v0, 0x3d

    return-wide v0

    :pswitch_4
    const-wide/16 v0, 0x3c

    return-wide v0

    :pswitch_5
    const-wide/16 v0, 0x3b

    return-wide v0

    :pswitch_6
    const-wide/16 v0, 0x3a

    return-wide v0

    :pswitch_7
    const-wide/16 v0, 0x39

    return-wide v0

    :pswitch_8
    const-wide/16 v0, 0x38

    return-wide v0

    :pswitch_9
    const-wide/16 v0, 0x37

    return-wide v0

    :pswitch_a
    const-wide/16 v0, 0x36

    return-wide v0

    :pswitch_b
    const-wide/16 v0, 0x35

    return-wide v0

    :pswitch_c
    const-wide/16 v0, 0x34

    return-wide v0

    :pswitch_d
    const-wide/16 v0, 0x33

    return-wide v0

    :pswitch_e
    const-wide/16 v0, 0x32

    return-wide v0

    :pswitch_f
    const-wide/16 v0, 0x31

    return-wide v0

    :pswitch_10
    const-wide/16 v0, 0x30

    return-wide v0

    :pswitch_11
    const-wide/16 v0, 0x2f

    return-wide v0

    :pswitch_12
    const-wide/16 v0, 0x2e

    return-wide v0

    :pswitch_13
    const-wide/16 v0, 0x2d

    return-wide v0

    :pswitch_14
    const-wide/16 v0, 0x2c

    return-wide v0

    :pswitch_15
    const-wide/16 v0, 0x2b

    return-wide v0

    :pswitch_16
    const-wide/16 v0, 0x2a

    return-wide v0

    :pswitch_17
    const-wide/16 v0, 0x29

    return-wide v0

    :pswitch_18
    const-wide/16 v0, 0x28

    return-wide v0

    :pswitch_19
    const-wide/16 v0, 0x27

    return-wide v0

    :pswitch_1a
    const-wide/16 v0, 0x26

    return-wide v0

    :pswitch_1b
    const-wide/16 v0, 0x25

    return-wide v0

    :pswitch_1c
    const-wide/16 v0, 0x24

    return-wide v0

    :pswitch_1d
    const-wide/16 v0, 0x23

    return-wide v0

    :pswitch_1e
    const-wide/16 v0, 0x22

    return-wide v0

    :pswitch_1f
    const-wide/16 v0, 0x21

    return-wide v0

    :pswitch_20
    const-wide/16 v0, 0x20

    return-wide v0

    :pswitch_21
    const-wide/16 v0, 0x1f

    return-wide v0

    :pswitch_22
    const-wide/16 v0, 0x1e

    return-wide v0

    :pswitch_23
    const-wide/16 v0, 0x1d

    return-wide v0

    :pswitch_24
    const-wide/16 v0, 0x1c

    return-wide v0

    :pswitch_25
    const-wide/16 v0, 0x1b

    return-wide v0

    :pswitch_26
    const-wide/16 v0, 0x1a

    return-wide v0

    :pswitch_27
    const-wide/16 v0, 0x19

    return-wide v0

    :pswitch_28
    const-wide/16 v0, 0x18

    return-wide v0

    :pswitch_29
    const-wide/16 v0, 0x17

    return-wide v0

    :pswitch_2a
    const-wide/16 v0, 0x16

    return-wide v0

    :pswitch_2b
    const-wide/16 v0, 0x15

    return-wide v0

    :pswitch_2c
    const-wide/16 v0, 0x14

    return-wide v0

    :pswitch_2d
    const-wide/16 v0, 0x13

    return-wide v0

    :pswitch_2e
    const-wide/16 v0, 0x12

    return-wide v0

    :pswitch_2f
    const-wide/16 v0, 0x11

    return-wide v0

    :pswitch_30
    const-wide/16 v0, 0x10

    return-wide v0

    :pswitch_31
    const-wide/16 v0, 0xf

    return-wide v0

    :pswitch_32
    const-wide/16 v0, 0xe

    return-wide v0

    :pswitch_33
    const-wide/16 v0, 0xd

    return-wide v0

    :pswitch_34
    const-wide/16 v0, 0xc

    return-wide v0

    :pswitch_35
    const-wide/16 v0, 0xb

    return-wide v0

    :pswitch_36
    const-wide/16 v0, 0xa

    return-wide v0

    :pswitch_37
    const-wide/16 v0, 0x9

    return-wide v0

    :pswitch_38
    const-wide/16 v0, 0x8

    return-wide v0

    :pswitch_39
    const-wide/16 v0, 0x7

    return-wide v0

    :pswitch_3a
    const-wide/16 v0, 0x6

    return-wide v0

    :pswitch_3b
    const-wide/16 v0, 0x5

    return-wide v0

    :pswitch_3c
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_3d
    const-wide/16 v0, 0x3

    return-wide v0

    :pswitch_3e
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_3f
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic ﹳٴ(I)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return v0
.end method

.method public static ﾞᴵ(Lʽⁱ/ᵔﹳ;Lˊﾞ/ٴᵢ;)V
    .locals 1

    new-instance v0, Lʽⁱ/ﹳᐧ;

    invoke-direct {v0, p0}, Lʽⁱ/ﹳᐧ;-><init>(Lʽⁱ/ᵔﹳ;)V

    invoke-interface {p1, v0}, Lˊﾞ/ٴᵢ;->ˈ(Lʽⁱ/ﹳᐧ;)V

    return-void
.end method
