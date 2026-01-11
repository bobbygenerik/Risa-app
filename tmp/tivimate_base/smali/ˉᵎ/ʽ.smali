.class public final synthetic Lˉᵎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʾﹳ/ⁱˊ;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Object;

.field public final synthetic ⁱˊ:Ljava/lang/Object;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lˉᵎ/ʽ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˉᵎ/ʽ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lˉᵎ/ʽ;->ⁱˊ:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lˉᵎ/ʽ;->ﹳٴ:I

    iput-object p1, p0, Lˉᵎ/ʽ;->ⁱˊ:Ljava/lang/Object;

    iput-object p3, p0, Lˉᵎ/ʽ;->ʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lˉᵎ/ʽ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lˉᵎ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lˉᵎ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lـˎ/ᵔᵢ;

    invoke-direct {v2, v0, v1}, Lـˎ/ᵔᵢ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lˉᵎ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˏ/ﾞᴵ;

    iget-object v1, p0, Lˉᵎ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lˏ/ⁱˊ;

    iget-object v2, v1, Lˏ/ⁱˊ;->ﾞᴵ:Lˏ/ˈ;

    new-instance v3, Landroidx/leanback/widget/ʻٴ;

    invoke-direct {v3, v1, v0}, Landroidx/leanback/widget/ʻٴ;-><init>(Lˏ/ⁱˊ;Lˏ/ʽ;)V

    invoke-interface {v2, v3}, Lˏ/ˈ;->ˈ(Landroidx/leanback/widget/ʻٴ;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lˉᵎ/ʽ;->ⁱˊ:Ljava/lang/Object;

    check-cast v0, Lˉᵎ/ᵎﹶ;

    iget-object v1, p0, Lˉᵎ/ʽ;->ʽ:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lˋˆ/ﹳٴ;

    invoke-virtual {v0}, Lˉᵎ/ᵎﹶ;->ʽ()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lˉᵎ/ᵎﹶ;->ˈ:Lˏ/ﾞᴵ;

    const-class v4, Lˋˑ/ﹳٴ;

    invoke-virtual {v0, v4}, Lˏ/ﾞᴵ;->ⁱˊ(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˋˑ/ﹳٴ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-lt v0, v4, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ᵢי;->ʽ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "com.google.firebase.common.prefs:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    iput-boolean v5, v2, Lˋˆ/ﹳٴ;->ﹳٴ:Z

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
