.class public final Lﹳʾ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lﹳʾ/ʽ;

.field public static final ˈ:Lﹳʾ/ʽ;

.field public static final ˑﹳ:Lﹳʾ/ʽ;

.field public static final ⁱˊ:Lﹳʾ/ʽ;


# instance fields
.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lﹳʾ/ʽ;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lﹳʾ/ʽ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ʽ;->ⁱˊ:Lﹳʾ/ʽ;

    new-instance v0, Lﹳʾ/ʽ;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lﹳʾ/ʽ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ʽ;->ʽ:Lﹳʾ/ʽ;

    new-instance v0, Lﹳʾ/ʽ;

    const-string v1, "LEGACY"

    invoke-direct {v0, v1}, Lﹳʾ/ʽ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ʽ;->ˈ:Lﹳʾ/ʽ;

    new-instance v0, Lﹳʾ/ʽ;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lﹳʾ/ʽ;-><init>(Ljava/lang/String;)V

    sput-object v0, Lﹳʾ/ʽ;->ˑﹳ:Lﹳʾ/ʽ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳʾ/ʽ;->ﹳٴ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lﹳʾ/ʽ;->ﹳٴ:Ljava/lang/String;

    return-object v0
.end method
