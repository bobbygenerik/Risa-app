.class public final Lˆﹶ/ﾞʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final ʽʽ:Z

.field public final ʾˋ:Lـʾ/ʽ;

.field public final ˈٴ:I

.field public final ᴵˊ:Lـʾ/ᵔᵢ;


# direct methods
.method public constructor <init>(Lـʾ/ʽ;Lـʾ/ᵔᵢ;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˆﹶ/ﾞʻ;->ʾˋ:Lـʾ/ʽ;

    iput-object p2, p0, Lˆﹶ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔᵢ;

    iput-boolean p3, p0, Lˆﹶ/ﾞʻ;->ʽʽ:Z

    iput p4, p0, Lˆﹶ/ﾞʻ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lˆﹶ/ﾞʻ;->ʽʽ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lˆﹶ/ﾞʻ;->ʾˋ:Lـʾ/ʽ;

    iget-object v1, p0, Lˆﹶ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔᵢ;

    iget v2, p0, Lˆﹶ/ﾞʻ;->ˈٴ:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lـʾ/ᵔᵢ;->ﹳٴ:Lˑᵎ/ﾞʻ;

    iget-object v1, v1, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, v0, Lـʾ/ʽ;->ٴﹶ:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v0, v1}, Lـʾ/ʽ;->ⁱˊ(Ljava/lang/String;)Lـʾ/ʾˋ;

    move-result-object v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0, v2}, Lـʾ/ʽ;->ˑﹳ(Ljava/lang/String;Lـʾ/ʾˋ;I)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lˆﹶ/ﾞʻ;->ʾˋ:Lـʾ/ʽ;

    iget-object v1, p0, Lˆﹶ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔᵢ;

    iget v2, p0, Lˆﹶ/ﾞʻ;->ˈٴ:I

    invoke-virtual {v0, v1, v2}, Lـʾ/ʽ;->ᵔᵢ(Lـʾ/ᵔᵢ;I)Z

    move-result v0

    :goto_0
    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v1

    const-string v2, "StopWorkRunnable"

    invoke-static {v2}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StopWorkRunnable for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lˆﹶ/ﾞʻ;->ᴵˊ:Lـʾ/ᵔᵢ;

    iget-object v4, v4, Lـʾ/ᵔᵢ;->ﹳٴ:Lˑᵎ/ﾞʻ;

    iget-object v4, v4, Lˑᵎ/ﾞʻ;->ﹳٴ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; Processor.stopWork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
