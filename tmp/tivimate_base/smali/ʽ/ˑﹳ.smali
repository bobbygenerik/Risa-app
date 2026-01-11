.class public final synthetic Lʽ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˈ/ﹳٴ;


# instance fields
.field public final synthetic ⁱˊ:Lʽ/ٴﹶ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lʽ/ٴﹶ;I)V
    .locals 0

    iput p2, p0, Lʽ/ˑﹳ;->ﹳٴ:I

    iput-object p1, p0, Lʽ/ˑﹳ;->ⁱˊ:Lʽ/ٴﹶ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 10

    .prologue
    iget v0, p0, Lʽ/ˑﹳ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʽ/ˑﹳ;->ⁱˊ:Lʽ/ٴﹶ;

    check-cast v0, Lᵔᵢ/ˆʾ;

    iget-object v0, v0, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    iget-object v0, v0, Lˉˆ/ʿ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑʼ/ٴᵢ;

    iget-object v1, v0, Lˑʼ/ٴᵢ;->ٴʼ:Lˑʼ/ʿ;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lˑʼ/ʿ;->ⁱˊ(Lˑʼ/ٴᵢ;Lʼ/ᵎﹶ;Lˑʼ/ᴵᵔ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lʽ/ˑﹳ;->ⁱˊ:Lʽ/ٴﹶ;

    iget-object v1, v0, Lʽ/ٴﹶ;->ᴵᵔ:Lـʾ/ᵔﹳ;

    iget-object v1, v1, Lـʾ/ᵔﹳ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Lˑʼ/ᵎˊ;

    const-string v2, "android:support:activity-result"

    invoke-virtual {v1, v2}, Lˑʼ/ᵎˊ;->ʼᐧ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lʽ/ٴﹶ;->ᵎˊ:Lʽ/ﾞᴵ;

    iget-object v2, v0, Lʽ/ﾞᴵ;->ⁱˊ:Ljava/util/HashMap;

    iget-object v3, v0, Lʽ/ﾞᴵ;->ﹳٴ:Ljava/util/HashMap;

    iget-object v4, v0, Lʽ/ﾞᴵ;->ᵎﹶ:Landroid/os/Bundle;

    const-string v5, "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v0, Lʽ/ﾞᴵ;->ˈ:Ljava/util/ArrayList;

    const-string v7, "KEY_COMPONENT_ACTIVITY_PENDING_RESULT"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, Lʽ/ﾞᴵ;->ⁱˊ:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
