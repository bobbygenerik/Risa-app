.class public final synthetic Lᵔᐧ/ʼˎ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳٴ;


# instance fields
.field public final synthetic ʽʽ:Lˊᐧ/ﾞᴵ;

.field public final synthetic ʾˋ:Lᵔᐧ/ᵔʾ;

.field public final synthetic ˈٴ:I

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(Lᵔᐧ/ᵔʾ;ILˊᐧ/ﾞᴵ;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᵔᐧ/ʼˎ;->ʾˋ:Lᵔᐧ/ᵔʾ;

    iput p2, p0, Lᵔᐧ/ʼˎ;->ᴵˊ:I

    iput-object p3, p0, Lᵔᐧ/ʼˎ;->ʽʽ:Lˊᐧ/ﾞᴵ;

    iput p4, p0, Lᵔᐧ/ʼˎ;->ˈٴ:I

    return-void
.end method


# virtual methods
.method public final ʽ()Ljava/lang/Object;
    .locals 5

    .prologue
    iget-object v0, p0, Lᵔᐧ/ʼˎ;->ʾˋ:Lᵔᐧ/ᵔʾ;

    iget v1, p0, Lᵔᐧ/ʼˎ;->ᴵˊ:I

    iget-object v2, p0, Lᵔᐧ/ʼˎ;->ʽʽ:Lˊᐧ/ﾞᴵ;

    iget v3, p0, Lᵔᐧ/ʼˎ;->ˈٴ:I

    :try_start_0
    iget-object v4, v0, Lᵔᐧ/ᵔʾ;->ᵎˊ:Lᵔᐧ/ʼʼ;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lˊᐧ/ﾞᴵ;->skip(J)V

    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ᴵˑ:Lᵔᐧ/ـˆ;

    const/16 v3, 0x9

    invoke-virtual {v2, v1, v3}, Lᵔᐧ/ـˆ;->ˈٴ(II)V

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, v0, Lᵔᐧ/ᵔʾ;->ʿ:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object v0
.end method
