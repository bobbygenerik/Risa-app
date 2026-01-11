.class public final Lﹳʾ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʾ/ٴﹶ;

.field public static final ˈ:Lﹳʾ/ٴﹶ;

.field public static final ˑﹳ:Lﹳʾ/ٴﹶ;

.field public static final ⁱˊ:Lﹳʾ/ٴﹶ;


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳʾ/ٴﹶ;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lﹳʾ/ٴﹶ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ٴﹶ;->ⁱˊ:Lﹳʾ/ٴﹶ;

    new-instance v0, Lﹳʾ/ٴﹶ;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lﹳʾ/ٴﹶ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ٴﹶ;->ʽ:Lﹳʾ/ٴﹶ;

    new-instance v0, Lﹳʾ/ٴﹶ;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lﹳʾ/ٴﹶ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ٴﹶ;->ˈ:Lﹳʾ/ٴﹶ;

    new-instance v0, Lﹳʾ/ٴﹶ;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lﹳʾ/ٴﹶ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ٴﹶ;->ˑﹳ:Lﹳʾ/ٴﹶ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʾ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹳʾ/ٴﹶ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
