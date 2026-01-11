.class public final Lᐧﾞ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʿᵢ/ﹶᐧ;


# static fields
.field public static final ˈ:Ljava/util/LinkedHashSet;

.field public static final ˑﹳ:Lـˎ/ˈ;


# instance fields
.field public final ʽ:Lʻᵢ/ʼˎ;

.field public final ⁱˊ:Lʿᵢ/ˉٴ;

.field public final ﹳٴ:Lˊᐧ/ﾞʻ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lᐧﾞ/ˑﹳ;->ˈ:Ljava/util/LinkedHashSet;

    new-instance v0, Lـˎ/ˈ;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lـˎ/ˈ;-><init>(I)V

    sput-object v0, Lᐧﾞ/ˑﹳ;->ˑﹳ:Lـˎ/ˈ;

    return-void
.end method

.method public constructor <init>(Lˊᐧ/ﾞʻ;Lʿᵢ/ˉٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧﾞ/ˑﹳ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iput-object p2, p0, Lᐧﾞ/ˑﹳ;->ⁱˊ:Lʿᵢ/ˉٴ;

    new-instance p1, Lᐧﾞ/ˈ;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lᐧﾞ/ˈ;-><init>(Lᐧﾞ/ˑﹳ;I)V

    new-instance p2, Lʻᵢ/ʼˎ;

    invoke-direct {p2, p1}, Lʻᵢ/ʼˎ;-><init>(Lᴵⁱ/ﹳٴ;)V

    iput-object p2, p0, Lᐧﾞ/ˑﹳ;->ʽ:Lʻᵢ/ʼˎ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Lʿᵢ/ᵔי;
    .locals 6

    .prologue
    const-string v0, "There are multiple DataStores active for the same file: "

    iget-object v1, p0, Lᐧﾞ/ˑﹳ;->ʽ:Lʻᵢ/ʼˎ;

    invoke-virtual {v1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˊᐧ/ʽﹳ;

    iget-object v1, v1, Lˊᐧ/ʽﹳ;->ʾˋ:Lˊᐧ/ʼˎ;

    invoke-virtual {v1}, Lˊᐧ/ʼˎ;->ʼᐧ()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lᐧﾞ/ˑﹳ;->ˑﹳ:Lـˎ/ˈ;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lᐧﾞ/ˑﹳ;->ˈ:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    new-instance v0, Lʿᵢ/ᵔי;

    iget-object v1, p0, Lᐧﾞ/ˑﹳ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    iget-object v2, p0, Lᐧﾞ/ˑﹳ;->ʽ:Lʻᵢ/ʼˎ;

    invoke-virtual {v2}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lˊᐧ/ʽﹳ;

    sget-object v3, Lᐧﾞ/ʽ;->ᴵˊ:Lᐧﾞ/ʽ;

    iget-object v4, p0, Lᐧﾞ/ˑﹳ;->ʽ:Lʻᵢ/ʼˎ;

    invoke-virtual {v4}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˊᐧ/ʽﹳ;

    iget-object v5, p0, Lᐧﾞ/ˑﹳ;->ﹳٴ:Lˊᐧ/ﾞʻ;

    invoke-virtual {v3, v4, v5}, Lᐧﾞ/ʽ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lʿᵢ/ˑٴ;

    new-instance v4, Lᐧﾞ/ˈ;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lᐧﾞ/ˈ;-><init>(Lᐧﾞ/ˑﹳ;I)V

    invoke-direct {v0, v1, v2, v3, v4}, Lʿᵢ/ᵔי;-><init>(Lˊᐧ/ﾞʻ;Lˊᐧ/ʽﹳ;Lʿᵢ/ˑٴ;Lᐧﾞ/ˈ;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
