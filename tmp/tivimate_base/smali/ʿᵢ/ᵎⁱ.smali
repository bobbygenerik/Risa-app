.class public final Lʿᵢ/ᵎⁱ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ﹶᐧ;


# static fields
.field public static final ˈ:Ljava/util/LinkedHashSet;

.field public static final ˑﹳ:Ljava/lang/Object;


# instance fields
.field public final ʽ:Lᴵⁱ/ﹳٴ;

.field public final ⁱˊ:Lᴵⁱ/ﾞʻ;

.field public final ﹳٴ:Lʿᵢ/ˏᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lʿᵢ/ᵎⁱ;->ˈ:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lʿᵢ/ᵎⁱ;->ˑﹳ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʿᵢ/ˏᵢ;Lᴵⁱ/ﾞʻ;Lᴵⁱ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʿᵢ/ᵎⁱ;->ﹳٴ:Lʿᵢ/ˏᵢ;

    iput-object p2, p0, Lʿᵢ/ᵎⁱ;->ⁱˊ:Lᴵⁱ/ﾞʻ;

    iput-object p3, p0, Lʿᵢ/ᵎⁱ;->ʽ:Lᴵⁱ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lʿᵢ/ᵔי;
    .locals 6

    .prologue
    const-string v0, "There are multiple DataStores active for the same file: "

    iget-object v1, p0, Lʿᵢ/ᵎⁱ;->ʽ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lʿᵢ/ᵎⁱ;->ˑﹳ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lʿᵢ/ᵎⁱ;->ˈ:Ljava/util/LinkedHashSet;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    new-instance v0, Lʿᵢ/ᵔי;

    iget-object v2, p0, Lʿᵢ/ᵎⁱ;->ﹳٴ:Lʿᵢ/ˏᵢ;

    iget-object v3, p0, Lʿᵢ/ᵎⁱ;->ⁱˊ:Lᴵⁱ/ﾞʻ;

    invoke-interface {v3, v1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʿᵢ/ˑٴ;

    new-instance v4, Lʿᵢ/ˉٴ;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lʿᵢ/ˉٴ;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lʿᵢ/ᵔי;-><init>(Ljava/io/File;Lʿᵢ/ˏᵢ;Lʿᵢ/ˑٴ;Lʿᵢ/ˉٴ;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    throw v0
.end method
