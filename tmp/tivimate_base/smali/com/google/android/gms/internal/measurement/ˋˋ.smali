.class public final Lcom/google/android/gms/internal/measurement/ˋˋ;
.super Lcom/google/android/gms/internal/measurement/ٴﹶ;
.source "SourceFile"


# instance fields
.field public final ᴵˊ:Lᵢ/ﹳٴ;


# direct methods
.method public constructor <init>(Lᵢ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ٴﹶ;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˋˋ;->ᴵˊ:Lᵢ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 5

    .prologue
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ˋˋ;->ᴵˊ:Lᵢ/ﹳٴ;

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "setEventName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object p3, p2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/ﹳᐧ;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ:Lcom/google/android/gms/internal/measurement/ﾞʻ;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/ﾞʻ;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal event name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_1
    const-string v0, "setParamValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 p1, 0x2

    invoke-static {p1, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v0, p2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v0, p2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p2

    iget-object p3, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˉـ(Lcom/google/android/gms/internal/measurement/ᵔʾ;)Ljava/lang/Object;

    move-result-object v0

    iget-object p3, p3, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ʽ:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ⁱˊ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :sswitch_2
    const-string v0, "getParams"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    iget-object p1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ʽ:Ljava/util/HashMap;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ٴﹶ;

    invoke-direct {p2}, Lcom/google/android/gms/internal/measurement/ٴﹶ;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lᴵˋ/ˊʻ;->ˑٴ(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ٴﹶ;->ʼˎ(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔʾ;)V

    goto :goto_0

    :cond_2
    return-object p2

    :sswitch_3
    const-string v0, "getParamValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object p3, p2, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ʽ:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lᴵˋ/ˊʻ;->ˑٴ(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v0, "getTimestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    iget-object p1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    iget-wide v0, p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ⁱˊ:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object p2

    :sswitch_5
    const-string v0, "getEventName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v3, v0, p3}, Lˉᵎ/ⁱˊ;->ˑٴ(ILjava/lang/String;Ljava/util/List;)V

    iget-object p1, v2, Lᵢ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;

    new-instance p2, Lcom/google/android/gms/internal/measurement/ᵔﹳ;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/ᵔﹳ;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_4
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ٴﹶ;->ᵔᵢ(Ljava/lang/String;Lˏˆ/ﹳٴ;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
