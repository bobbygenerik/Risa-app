.class public final synthetic Lᴵˋ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lᴵⁱ/ﹳٴ;

.field public final synthetic ʾˋ:Lᴵˋ/ˆʾ;

.field public final synthetic ˈٴ:Landroidx/lifecycle/ˊʻ;

.field public final synthetic ᴵˊ:Ljava/lang/String;

.field public final synthetic ᴵᵔ:Lʽﹳ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lᴵˋ/ˆʾ;Ljava/lang/String;Lᴵⁱ/ﹳٴ;Landroidx/lifecycle/ˊʻ;Lʽﹳ/ᵔᵢ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵˋ/ᵢˏ;->ʾˋ:Lᴵˋ/ˆʾ;

    iput-object p2, p0, Lᴵˋ/ᵢˏ;->ᴵˊ:Ljava/lang/String;

    iput-object p3, p0, Lᴵˋ/ᵢˏ;->ʽʽ:Lᴵⁱ/ﹳٴ;

    iput-object p4, p0, Lᴵˋ/ᵢˏ;->ˈٴ:Landroidx/lifecycle/ˊʻ;

    iput-object p5, p0, Lᴵˋ/ᵢˏ;->ᴵᵔ:Lʽﹳ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lᴵˋ/ᵢˏ;->ᴵˊ:Ljava/lang/String;

    iget-object v1, p0, Lᴵˋ/ᵢˏ;->ʽʽ:Lᴵⁱ/ﹳٴ;

    iget-object v2, p0, Lᴵˋ/ᵢˏ;->ˈٴ:Landroidx/lifecycle/ˊʻ;

    iget-object v3, p0, Lᴵˋ/ᵢˏ;->ᴵᵔ:Lʽﹳ/ᵔᵢ;

    iget-object v4, p0, Lᴵˋ/ᵢˏ;->ʾˋ:Lᴵˋ/ˆʾ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/bumptech/glide/ʽ;->ˉˆ()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/ʽ;->ˊʻ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {v1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    sget-object v0, Lᴵˋ/ˆʾ;->ʽ:Lᴵˋ/ʾᵎ;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/ʽʽ;->ʼˎ(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lʽﹳ/ᵔᵢ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v1, Lᴵˋ/ـˆ;

    invoke-direct {v1, v0}, Lᴵˋ/ـˆ;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v1}, Landroidx/lifecycle/ʽʽ;->ʼˎ(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lʽﹳ/ᵔᵢ;->ⁱˊ(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_2
    throw v0
.end method
