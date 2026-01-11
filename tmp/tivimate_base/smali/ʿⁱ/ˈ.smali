.class public final Lʿⁱ/ˈ;
.super Lʿⁱ/ᵎﹶ;
.source "SourceFile"


# static fields
.field public static final ʽʽ:Lʿⁱ/ˈ;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lʿⁱ/ˈ;

    sget v2, Lʿⁱ/ˆʾ;->ʽ:I

    sget v3, Lʿⁱ/ˆʾ;->ˈ:I

    sget-wide v4, Lʿⁱ/ˆʾ;->ˑﹳ:J

    sget-object v6, Lʿⁱ/ˆʾ;->ﹳٴ:Ljava/lang/String;

    invoke-direct {v0}, Lᴵי/ˏי;-><init>()V

    new-instance v1, Lʿⁱ/ⁱˊ;

    invoke-direct/range {v1 .. v6}, Lʿⁱ/ⁱˊ;-><init>(IIJLjava/lang/String;)V

    iput-object v1, v0, Lʿⁱ/ᵎﹶ;->ᴵˊ:Lʿⁱ/ⁱˊ;

    sput-object v0, Lʿⁱ/ˈ;->ʽʽ:Lʿⁱ/ˈ;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
