.class public final Lᐧᵢ/ʼʼ;
.super Lˊᐧ/ˉʿ;
.source "SourceFile"


# instance fields
.field public final synthetic ᴵˊ:Lᐧᵢ/ᵢˏ;


# direct methods
.method public constructor <init>(Lᐧᵢ/ᵢˏ;Lˊᐧ/ᵔᵢ;)V
    .locals 0

    iput-object p1, p0, Lᐧᵢ/ʼʼ;->ᴵˊ:Lᐧᵢ/ᵢˏ;

    invoke-direct {p0, p2}, Lˊᐧ/ˉʿ;-><init>(Lˊᐧ/ᴵˊ;)V

    return-void
.end method


# virtual methods
.method public final ٴﹶ(Lˊᐧ/ﾞᴵ;J)J
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lˊᐧ/ˉʿ;->ʾˋ:Lˊᐧ/ᴵˊ;

    invoke-interface {v0, p1, p2, p3}, Lˊᐧ/ᴵˊ;->ٴﹶ(Lˊᐧ/ﾞᴵ;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lᐧᵢ/ʼʼ;->ᴵˊ:Lᐧᵢ/ᵢˏ;

    iput-object p1, p2, Lᐧᵢ/ᵢˏ;->ˈٴ:Ljava/io/IOException;

    throw p1
.end method
