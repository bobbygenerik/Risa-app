.class public final Landroidx/datastore/preferences/protobuf/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʽ:I

.field public ˈ:I

.field public ⁱˊ:I

.field public final ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/ˆʾ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    sget-object v0, Landroidx/datastore/preferences/protobuf/ʾᵎ;->ﹳٴ:Ljava/nio/charset/Charset;

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    iput-object p0, p1, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final ʻٴ(I)V
    .locals 1

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ˑﹳ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public final ʼˎ(Landroidx/datastore/preferences/protobuf/ٴﹳ;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ᵔʾ;)Ljava/lang/Object;
    .locals 5

    .prologue
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    sget-object p1, Landroidx/datastore/preferences/protobuf/ˑٴ;->ʽ:Landroidx/datastore/preferences/protobuf/ˑٴ;

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/ˑٴ;->ﹳٴ(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/ʼˈ;

    move-result-object p1

    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ˈ()Landroidx/datastore/preferences/protobuf/ʻٴ;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    invoke-interface {p1, p2}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ⁱˊ(Ljava/lang/Object;)V

    return-object p2

    :pswitch_9
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵˊ()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_d
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :pswitch_10
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :pswitch_11
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ʼᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾᵎ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ʽ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 4

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞʻ(I)I

    move-result v1

    iget v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ᵔᵢ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ⁱˊ(I)V

    iget p1, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˆʾ(I)V

    return-void

    :cond_0
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ʽﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵᵔ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ʾᵎ()Z
    .locals 3

    .prologue
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˊʻ(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ˆʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﹳᐧ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˉʿ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˉʿ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˉˆ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ـˆ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˏי(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔʾ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v0

    return-object v0
.end method

.method public final יـ(Landroidx/datastore/preferences/protobuf/ـˆ;Z)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz p2, :cond_1

    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᴵˊ()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ـˆ(I)V

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʾˋ()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v2}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ـˆ(I)V
    .locals 1

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method

.method public final ٴﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->יـ()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵎﹶ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼᐧ()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵔʾ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʻٴ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵔᵢ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵔﹳ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ᵔﹳ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʼʼ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ⁱˊ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ʼˈ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    :try_start_0
    invoke-interface {p2, p1, p0, p3}, Landroidx/datastore/preferences/protobuf/ʼˈ;->ᵔᵢ(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ٴﹶ;Landroidx/datastore/preferences/protobuf/ᵔʾ;)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string p2, "Failed to parse the message."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    throw p1
.end method

.method public final ﹳٴ()I
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    if-eqz v0, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    :goto_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eqz v0, :cond_2

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʽ:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final ﹳᐧ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 5

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v2

    add-int/2addr v2, v0

    :cond_0
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ʻٴ(I)V

    return-void

    :cond_1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵢˏ()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v2, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v2, :cond_2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void
.end method

.method public final ﾞʻ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 4

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˈٴ()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_5

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v1

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ˏי()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v3, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ﾞᴵ()I

    move-result v0

    if-lt v0, v1, :cond_4

    :goto_0
    return-void

    :cond_5
    new-instance p1, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    const-string v0, "Failed to parse the message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ﾞᴵ(Landroidx/datastore/preferences/protobuf/ـˆ;)V
    .locals 2

    .prologue
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˑﹳ()Landroidx/datastore/preferences/protobuf/ᵎﹶ;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/ˋᵔ;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/ˋᵔ;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ﹳٴ:Landroidx/datastore/preferences/protobuf/ˆʾ;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ᵎﹶ()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ˆʾ;->ʽʽ()I

    move-result v0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ⁱˊ:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/ٴﹶ;->ˈ:I

    return-void

    :cond_2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->ⁱˊ()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1
.end method
