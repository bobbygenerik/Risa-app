.class public final Lˑʼ/ˆﾞ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑﹳ/ⁱˊ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lˑʼ/ʿ;


# direct methods
.method public synthetic constructor <init>(Lˑʼ/ʿ;I)V
    .locals 0

    iput p2, p0, Lˑʼ/ˆﾞ;->ʾˋ:I

    iput-object p1, p0, Lˑʼ/ˆﾞ;->ᴵˊ:Lˑʼ/ʿ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵔᵢ(Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lˑʼ/ˆﾞ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lˑﹳ/ﹳٴ;

    iget-object v0, p0, Lˑʼ/ˆﾞ;->ᴵˊ:Lˑʼ/ʿ;

    iget-object v1, v0, Lˑʼ/ʿ;->ٴᵢ:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˑʼ/ـˏ;

    const-string v2, "FragmentManager"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No IntentSenders were started for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lˑʼ/ـˏ;->ʾˋ:Ljava/lang/String;

    iget v1, v1, Lˑʼ/ـˏ;->ᴵˊ:I

    iget-object v0, v0, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {v0, v3}, Lˏˆ/ﹳٴ;->ﹳᐧ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Intent Sender result delivered for unknown Fragment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_0

    :cond_1
    iget v2, p1, Lˑﹳ/ﹳٴ;->ʾˋ:I

    iget-object p1, p1, Lˑﹳ/ﹳٴ;->ᴵˊ:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Lˑʼ/ᴵᵔ;->ٴﹳ(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    aput v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lˑʼ/ˆﾞ;->ᴵˊ:Lˑʼ/ʿ;

    iget-object v0, p1, Lˑʼ/ʿ;->ٴᵢ:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˑʼ/ـˏ;

    const-string v1, "FragmentManager"

    if-nez v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No permissions were requested for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lˑʼ/ـˏ;->ʾˋ:Ljava/lang/String;

    iget-object p1, p1, Lˑʼ/ʿ;->ʽ:Lˏˆ/ﹳٴ;

    invoke-virtual {p1, v0}, Lˏˆ/ﹳٴ;->ﹳᐧ(Ljava/lang/String;)Lˑʼ/ᴵᵔ;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Permission request result delivered for unknown Fragment "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
