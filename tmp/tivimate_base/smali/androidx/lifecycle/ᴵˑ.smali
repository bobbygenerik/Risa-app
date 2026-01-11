.class public final Landroidx/lifecycle/ᴵˑ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ᐧᴵ;


# instance fields
.field public final ʽ:Landroid/os/Bundle;

.field public final ˈ:Landroidx/lifecycle/ـˆ;

.field public final ˑﹳ:Lˑʼ/ᵎˊ;

.field public final ⁱˊ:Landroidx/lifecycle/ᐧﾞ;

.field public final ﹳٴ:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lᵎ/ˑﹳ;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Lᵎ/ˑﹳ;->ﾞᴵ()Lˑʼ/ᵎˊ;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/ᴵˑ;->ˑﹳ:Lˑʼ/ᵎˊ;

    invoke-interface {p2}, Landroidx/lifecycle/ʽﹳ;->ˋᵔ()Landroidx/lifecycle/ـˆ;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/ᴵˑ;->ˈ:Landroidx/lifecycle/ـˆ;

    iput-object p3, p0, Landroidx/lifecycle/ᴵˑ;->ʽ:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/ᴵˑ;->ﹳٴ:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/ᐧﾞ;->ˈ:Landroidx/lifecycle/ᐧﾞ;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/ᐧﾞ;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ᐧﾞ;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/ᐧﾞ;->ˈ:Landroidx/lifecycle/ᐧﾞ;

    :cond_0
    sget-object p1, Landroidx/lifecycle/ᐧﾞ;->ˈ:Landroidx/lifecycle/ᐧﾞ;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/ᐧﾞ;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/ᐧﾞ;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/ᴵˑ;->ⁱˊ:Landroidx/lifecycle/ᐧﾞ;

    return-void
.end method


# virtual methods
.method public final ʽ(Ljava/lang/Class;Lʼـ/ʽ;)Landroidx/lifecycle/ᵎᵔ;
    .locals 5

    .prologue
    sget-object v0, Landroidx/lifecycle/ʼˈ;->ˑﹳ:Lﹳˋ/ʼˎ;

    invoke-virtual {p2, v0}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ﹳٴ:Lˋⁱ/ﾞᴵ;

    invoke-virtual {p2, v1}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/lifecycle/ʼˈ;->ⁱˊ:Lـˎ/ˈ;

    invoke-virtual {p2, v1}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Landroidx/lifecycle/ᐧﾞ;->ˑﹳ:Lᵎˉ/ⁱˊ;

    invoke-virtual {p2, v0}, Lʼـ/ʽ;->ﹳٴ(Lʼـ/ⁱˊ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/ﹳٴ;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/ˉـ;->ﹳٴ:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/ˉـ;->ﹳٴ(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/ˉـ;->ⁱˊ:Ljava/util/List;

    invoke-static {p1, v2}, Landroidx/lifecycle/ˉـ;->ﹳٴ(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/ᴵˑ;->ⁱˊ:Landroidx/lifecycle/ᐧﾞ;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/ᐧﾞ;->ʽ(Ljava/lang/Class;Lʼـ/ʽ;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/ʼˈ;->ﹳٴ(Lʼـ/ʽ;)Landroidx/lifecycle/ˑٴ;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object p2, v1, v3

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/ˉـ;->ⁱˊ(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/ʼˈ;->ﹳٴ(Lʼـ/ʽ;)Landroidx/lifecycle/ˑٴ;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/ˉـ;->ⁱˊ(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/ᴵˑ;->ˈ:Landroidx/lifecycle/ـˆ;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/ᴵˑ;->ˈ(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ˈ(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;
    .locals 11

    .prologue
    iget-object v0, p0, Landroidx/lifecycle/ᴵˑ;->ˈ:Landroidx/lifecycle/ـˆ;

    if-eqz v0, :cond_a

    const-class v1, Landroidx/lifecycle/ﹳٴ;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-object v2, p0, Landroidx/lifecycle/ᴵˑ;->ﹳٴ:Landroid/app/Application;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v3, Landroidx/lifecycle/ˉـ;->ﹳٴ:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/ˉـ;->ﹳٴ(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/lifecycle/ˉـ;->ⁱˊ:Ljava/util/List;

    invoke-static {p1, v3}, Landroidx/lifecycle/ˉـ;->ﹳٴ(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    iget-object p2, p0, Landroidx/lifecycle/ᴵˑ;->ⁱˊ:Landroidx/lifecycle/ᐧﾞ;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/ᐧﾞ;->ﹳٴ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p2, Landroidx/lifecycle/ˊˋ;->ⁱˊ:Landroidx/lifecycle/ˊˋ;

    if-nez p2, :cond_2

    new-instance p2, Landroidx/lifecycle/ˊˋ;

    invoke-direct {p2, v4}, Landroidx/lifecycle/ˊˋ;-><init>(I)V

    sput-object p2, Landroidx/lifecycle/ˊˋ;->ⁱˊ:Landroidx/lifecycle/ˊˋ;

    :cond_2
    sget-object p2, Landroidx/lifecycle/ˊˋ;->ⁱˊ:Landroidx/lifecycle/ˊˋ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ˏʻ;->ˈ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v5, p0, Landroidx/lifecycle/ᴵˑ;->ˑﹳ:Lˑʼ/ᵎˊ;

    invoke-virtual {v5, p2}, Lˑʼ/ᵎˊ;->ʼᐧ(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_4

    iget-object v6, p0, Landroidx/lifecycle/ᴵˑ;->ʽ:Landroid/os/Bundle;

    :cond_4
    if-nez v6, :cond_5

    new-instance v6, Landroidx/lifecycle/ˑٴ;

    invoke-direct {v6}, Landroidx/lifecycle/ˑٴ;-><init>()V

    goto :goto_2

    :cond_5
    const-class v7, Landroidx/lifecycle/ˑٴ;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->size()I

    move-result v7

    new-instance v8, Lⁱˏ/ﾞᴵ;

    invoke-direct {v8, v7}, Lⁱˏ/ﾞᴵ;-><init>(I)V

    invoke-virtual {v6}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lⁱˏ/ﾞᴵ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lⁱˏ/ﾞᴵ;->ⁱˊ()Lⁱˏ/ﾞᴵ;

    move-result-object v6

    new-instance v7, Landroidx/lifecycle/ˑٴ;

    invoke-direct {v7, v6}, Landroidx/lifecycle/ˑٴ;-><init>(Lⁱˏ/ﾞᴵ;)V

    move-object v6, v7

    :goto_2
    new-instance v7, Landroidx/lifecycle/ˋᵔ;

    invoke-direct {v7, p2, v6}, Landroidx/lifecycle/ˋᵔ;-><init>(Ljava/lang/String;Landroidx/lifecycle/ˑٴ;)V

    invoke-virtual {v7, v5, v0}, Landroidx/lifecycle/ˋᵔ;->ʽ(Lˑʼ/ᵎˊ;Landroidx/lifecycle/ـˆ;)V

    iget-object p2, v0, Landroidx/lifecycle/ـˆ;->ˈ:Landroidx/lifecycle/ᵔʾ;

    sget-object v8, Landroidx/lifecycle/ᵔʾ;->ᴵˊ:Landroidx/lifecycle/ᵔʾ;

    if-eq p2, v8, :cond_8

    sget-object v8, Landroidx/lifecycle/ᵔʾ;->ˈٴ:Landroidx/lifecycle/ᵔʾ;

    invoke-virtual {p2, v8}, Landroidx/lifecycle/ᵔʾ;->ﹳٴ(Landroidx/lifecycle/ᵔʾ;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    new-instance p2, Landroidx/lifecycle/ﾞᴵ;

    invoke-direct {p2, v0, v4, v5}, Landroidx/lifecycle/ﾞᴵ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/ـˆ;->ﹳٴ(Landroidx/lifecycle/ˏי;)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v5}, Lˑʼ/ᵎˊ;->ـˏ()V

    :goto_4
    const/4 p2, 0x0

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    aput-object v6, v0, v4

    invoke-static {p1, v3, v0}, Landroidx/lifecycle/ˉـ;->ⁱˊ(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    goto :goto_5

    :cond_9
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v6, v0, p2

    invoke-static {p1, v3, v0}, Landroidx/lifecycle/ˉـ;->ⁱˊ(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    :goto_5
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, p2, v7}, Landroidx/lifecycle/ᵎᵔ;->ʽ(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ⁱˊ(Lˊʼ/ﾞᴵ;Lʼـ/ˈ;)Landroidx/lifecycle/ᵎᵔ;
    .locals 0

    invoke-interface {p1}, Lˊʼ/ˑﹳ;->ﹳٴ()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/ᴵˑ;->ʽ(Ljava/lang/Class;Lʼـ/ʽ;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ(Ljava/lang/Class;)Landroidx/lifecycle/ᵎᵔ;
    .locals 1

    .prologue
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/ᴵˑ;->ˈ(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ᵎᵔ;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
