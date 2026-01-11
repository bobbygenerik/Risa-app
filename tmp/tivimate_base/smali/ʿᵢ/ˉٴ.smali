.class public final Lʿᵢ/ˉٴ;
.super Lˊʼ/ٴﹶ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lʿᵢ/ˉٴ;->ᴵˊ:I

    iput-object p2, p0, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lˊʼ/ٴﹶ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 4

    .prologue
    iget v0, p0, Lʿᵢ/ˉٴ;->ᴵˊ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, [Lᵎˈ/ᵎﹶ;

    array-length v0, v0

    new-array v0, v0, [Lⁱᵎ/ʽ;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lˏᵢ/ﹳٴ;

    invoke-virtual {v0}, Lˏᵢ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lﹶˑ/ˆʾ;->ʻʿ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences_pb"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lˊᐧ/ʽﹳ;->ᴵˊ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lᵎˉ/ⁱˊ;->ٴﹶ(Ljava/io/File;)Lˊᐧ/ʽﹳ;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File extension for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not match required extension for Preferences file: preferences_pb"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v0, p0, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v0, Lᴵי/ᵎⁱ;

    invoke-interface {v0}, Lᴵי/ᵎⁱ;->ﹳٴ()V

    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0

    :pswitch_2
    sget-object v0, Lʿᵢ/ᵎⁱ;->ˑﹳ:Ljava/lang/Object;

    iget-object v1, p0, Lʿᵢ/ˉٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lʿᵢ/ᵎⁱ;->ˈ:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
