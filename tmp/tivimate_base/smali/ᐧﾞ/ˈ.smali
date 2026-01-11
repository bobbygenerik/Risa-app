.class public final Lᐧﾞ/ˈ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lᐧﾞ/ˑﹳ;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᐧﾞ/ˑﹳ;I)V
    .locals 0

    iput p2, p0, Lᐧﾞ/ˈ;->ᴵˊ:I

    iput-object p1, p0, Lᐧﾞ/ˈ;->ʽʽ:Lᐧﾞ/ˑﹳ;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lᐧﾞ/ˈ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lᐧﾞ/ˑﹳ;->ˑﹳ:Lـˎ/ˈ;

    iget-object v1, p0, Lᐧﾞ/ˈ;->ʽʽ:Lᐧﾞ/ˑﹳ;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lᐧﾞ/ˑﹳ;->ˈ:Ljava/util/LinkedHashSet;

    iget-object v1, v1, Lᐧﾞ/ˑﹳ;->ʽ:Lʻᵢ/ʼˎ;

    invoke-virtual {v1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊᐧ/ʽﹳ;

    iget-object v1, v1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_0
    iget-object v0, p0, Lᐧﾞ/ˈ;->ʽʽ:Lᐧﾞ/ˑﹳ;

    iget-object v0, v0, Lᐧﾞ/ˑﹳ;->ⁱˊ:Lʿᵢ/ˉٴ;

    invoke-virtual {v0}, Lʿᵢ/ˉٴ;->ʽ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊᐧ/ʽﹳ;

    invoke-static {v1}, Lⁱٴ/ʽ;->ﹳٴ(Lˊᐧ/ʽﹳ;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v0, v1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v0}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lᵎˉ/ⁱˊ;->ᵔᵢ(Ljava/lang/String;Z)Lˊᐧ/ʽﹳ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OkioStorage requires absolute paths, but did not get an absolute path from producePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", instead got "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
