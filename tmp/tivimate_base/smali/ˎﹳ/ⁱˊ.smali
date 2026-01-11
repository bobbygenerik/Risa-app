.class public final Lˎﹳ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˏי:Z

.field public static final יـ:Lﹳˋ/ʼˎ;

.field public static final ᵔﹳ:Ljava/util/concurrent/TimeUnit;

.field public static final ﹳᐧ:Ljava/util/concurrent/TimeUnit;


# instance fields
.field public ʼˎ:J

.field public ʼᐧ:I

.field public ʽ:Ljavax/net/SocketFactory;

.field public ˆʾ:I

.field public ˈ:Ljava/util/Random;

.field public ˉʿ:Lﹳˋ/ʼˎ;

.field public ˉˆ:Lـˎ/ˈ;

.field public ˑﹳ:Ljava/util/UUID;

.field public ٴﹶ:J

.field public ᵎﹶ:Lﾞˎ/ʽ;

.field public ᵔʾ:J

.field public ᵔᵢ:I

.field public final ⁱˊ:Ljava/util/ArrayList;

.field public final ﹳٴ:Ljava/util/EnumSet;

.field public ﾞʻ:I

.field public ﾞᴵ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lˎﹳ/ⁱˊ;->ᵔﹳ:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lˎﹳ/ⁱˊ;->ﹳᐧ:Ljava/util/concurrent/TimeUnit;

    new-instance v0, Lﹳˋ/ʼˎ;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lˎﹳ/ⁱˊ;->יـ:Lﹳˋ/ʼˎ;

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lˎﹳ/ⁱˊ;->ˏי:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lʼﹳ/ʽ;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lˎﹳ/ⁱˊ;->ﹳٴ:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lˎﹳ/ⁱˊ;->ⁱˊ:Ljava/util/ArrayList;

    return-void
.end method
