.class public final Lᵎ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/יـ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final ᴵˊ:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lᵎ/ⁱˊ;->ʾˋ:I

    iput-object p2, p0, Lᵎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ᵎﹶ(Landroidx/lifecycle/ʽﹳ;Landroidx/lifecycle/ˉʿ;)V
    .locals 9

    .prologue
    iget v0, p0, Lᵎ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, Landroidx/lifecycle/ˉʿ;->ON_STOP:Landroidx/lifecycle/ˉʿ;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lᵎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Lˑʼ/ᴵᵔ;

    iget-object p1, p1, Lˑʼ/ᴵᵔ;->ˊᵔ:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void

    :pswitch_0
    sget-object v0, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    iget-object p1, p0, Lᵎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/ﹳـ;

    invoke-virtual {p1}, Landroidx/lifecycle/ﹳـ;->ⁱˊ()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Next event must be ON_CREATE, it was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Lᵎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast p1, [Landroidx/lifecycle/ᵔᵢ;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gtz p2, :cond_3

    array-length p2, p1

    if-gtz p2, :cond_2

    return-void

    :cond_2
    aget-object p1, p1, v1

    throw v0

    :cond_3
    aget-object p1, p1, v1

    throw v0

    :pswitch_2
    iget-object v0, p0, Lᵎ/ⁱˊ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lᵎ/ˑﹳ;

    sget-object v1, Landroidx/lifecycle/ˉʿ;->ON_CREATE:Landroidx/lifecycle/ˉʿ;

    if-ne p2, v1, :cond_e

    invoke-interface {p1}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/ـˆ;->ﾞᴵ(Landroidx/lifecycle/ˏי;)V

    invoke-interface {v0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object p1

    const-string p2, "androidx.savedstate.Restarter"

    invoke-virtual {p1, p2}, Lˑʼ/ᵎˊ;->ʼᐧ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string p2, "classes_to_restore"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :cond_5
    :goto_0
    if-ge v2, p2, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    const-string v4, "Class "

    :try_start_0
    const-class v5, Lᵎ/ⁱˊ;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v3, v1, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lᵎ/ʽ;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᵎ/ʽ;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v4, Landroidx/lifecycle/ˆʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v0, Landroidx/lifecycle/ᴵʼ;

    if-eqz v3, :cond_b

    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/ᴵʼ;

    invoke-interface {v3}, Landroidx/lifecycle/ᴵʼ;->ᵔי()Landroidx/lifecycle/ˏᵢ;

    move-result-object v3

    invoke-interface {v0}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/lifecycle/ˏᵢ;->ﹳٴ:Ljava/util/LinkedHashMap;

    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/ᵎᵔ;

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object v7

    const-string v8, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {v6, v8}, Landroidx/lifecycle/ᵎᵔ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/ˋᵔ;

    if-eqz v6, :cond_6

    iget-boolean v8, v6, Landroidx/lifecycle/ˋᵔ;->ʽʽ:Z

    if-nez v8, :cond_6

    invoke-virtual {v6, v4, v7}, Landroidx/lifecycle/ˋᵔ;->ʽ(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ـˆ;)V

    iget-object v6, v7, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v8, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    if-eq v6, v8, :cond_9

    sget-object v8, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {v6, v8}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    new-instance v6, Landroidx/lifecycle/ﾞᴵ;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v4}, Landroidx/lifecycle/ﾞᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v7, v6}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    goto :goto_1

    :cond_9
    :goto_2
    invoke-virtual {v4}, Lˑʼ/ᵎˊ;->ـˏ()V

    goto :goto_1

    :cond_a
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v4}, Lˑʼ/ᵎˊ;->ـˏ()V

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to instantiate "

    invoke-static {v0, v3}, Lʼﾞ/ˊˋ;->ʼʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, " wasn\'t found"

    invoke-static {v4, v3, v0}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_c
    :goto_3
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next event must be ON_CREATE"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
