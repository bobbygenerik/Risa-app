.class public final Lﹳˎ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Lˑˋ/ﹳٴ;

.field public static final ˑﹳ:Lcom/parse/ʼᐧ;


# instance fields
.field public ʽ:Ljava/lang/String;

.field public ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Lˑˋ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lˑˋ/ﹳٴ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lˑˋ/ﹳٴ;-><init>(I)V

    sput-object v0, Lﹳˎ/ᵔᵢ;->ˈ:Lˑˋ/ﹳٴ;

    new-instance v0, Lcom/parse/ʼᐧ;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/parse/ʼᐧ;-><init>(I)V

    sput-object v0, Lﹳˎ/ᵔᵢ;->ˑﹳ:Lcom/parse/ʼᐧ;

    return-void
.end method

.method public constructor <init>(Lˑˋ/ˈ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lﹳˎ/ᵔᵢ;->ⁱˊ:Ljava/lang/String;

    iput-object v0, p0, Lﹳˎ/ᵔᵢ;->ʽ:Ljava/lang/String;

    iput-object p1, p0, Lﹳˎ/ᵔᵢ;->ﹳٴ:Lˑˋ/ˈ;

    return-void
.end method

.method public static ﹳٴ(Lˑˋ/ˈ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string v0, "aqs."

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lˑˋ/ˈ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to persist App Quality Sessions session id."

    const-string p2, "FirebaseCrashlytics"

    nop

    :cond_0
    return-void
.end method
